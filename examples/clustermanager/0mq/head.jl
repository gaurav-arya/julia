include("ZMQCM.jl")

# @spawn run(`julia broker.jl`)

start_master(parseint(ARGS[1]))

resp = pmap(x -> myid() *2, [1:nworkers()])

println(resp)
