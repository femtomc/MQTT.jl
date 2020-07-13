module MQTT

using Distributed: Future
using Sockets: TCPSocket
import Sockets: connect
using Random: randstring
import Base: ReentrantLock, lock, unlock, convert
using Base.Threads, Dates

include("utils.jl")
include("client.jl")

export
    Client,
    User,
    QOS_0,
    QOS_1,
    QOS_2,
    connect_async,
    connect,
    subscribe_async,
    subscribe,
    unsubscribe_async,
    unsubscribe,
    publish_async,
    publish,
    disconnect,
    get,
    MQTT_ERR_INVAL
end
