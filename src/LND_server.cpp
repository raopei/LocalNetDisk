#include "base/Logging.h"
#include "net/EventLoop.h"
#include "net/TcpServer.h"

#include <stdio.h>
#include <unistd.h>

using namespace muduo;
using namespace muduo::net;


const int kBufSize = 64*1024;
const char* g_file = NULL;
typedef std::shared_ptr<FILE> FilePtr;

void onHighWaterMark(const TcpConnectionPtr& conn, size_t len)
{
    LOG_INFO << "HighWaterMark " << len;
}
void onConnection(const TcpConnectionPtr& conn)
{
    LOG_INFO << "FileServer - " << conn->peerAddress().toIpPort() << " -> "
             << conn->localAddress().toIpPort() << " is "
             << (conn->connected() ? "UP" : "DOWN");
    if (conn->connected())
    {
        LOG_INFO << "FileServer - Sending file " << g_file
                 << " to " << conn->peerAddress().toIpPort();
        conn->setHighWaterMarkCallback(onHighWaterMark, kBufSize+1);

        FILE* fp = ::fopen(g_file, "rb"); //read only
        if (fp)
        {
            FilePtr ctx(fp, ::fclose);
            conn->setContext(ctx);
            char buf[kBufSize];
            size_t nread = ::fread(buf, 1, sizeof buf, fp);
            conn->send(buf, static_cast<int>(nread));
        }
        else
        {
            conn->shutdown();
            LOG_INFO << "FileServer - no such file";
        }
    }
}

void onWriteComplete(const TcpConnectionPtr& conn)
{
    const FilePtr& fp = boost::any_cast<const FilePtr&>(conn->getContext());
    char buf[kBufSize];
    size_t nread = ::fread(buf, 1, sizeof buf, get_pointer(fp));
    if (nread > 0)
    {
        conn->send(buf, static_cast<int>(nread));
    }
    else
    {
        conn->shutdown();
        LOG_INFO << "FileServer - done";
    }
}

int main(int argc, char* argv[])
{
    LOG_INFO << "pid = " << getpid();
    if (argc > 1)
    {
        string ser_addr = "192.168.1.106";
        g_file = argv[1];
        EventLoop loop;
        InetAddress listenAddr(ser_addr,8088);
        TcpServer server(&loop, listenAddr, "FileServer");
        server.setConnectionCallback(onConnection);
        server.setWriteCompleteCallback(onWriteComplete);
        server.start();
        loop.loop();
    }
    else
    {
        fprintf(stderr, "Usage: %s file_for_downloading\n", argv[0]);
    }
}




