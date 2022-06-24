contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function sub_0a726fe5(?) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function isInstance(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_07aa253f(?) {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require calldata.size > cd[68] + 35
    require ('cd', 68).length <= test266151307()
    require (32 * ('cd', 68).length) + 160 >= 128 and (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 <= test266151307()
    mem[(32 * ('cd', 36).length) + 128] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = 0
    s = cd[68] + 36
    t = (32 * ('cd', 36).length) + 160
    while idx < ('cd', 68).length:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 len 19018] = code.data[1291 len 19018]
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19178] = address(cd[4])
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19210] = 128
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19306] = ('cd', 36).length
    idx = 0
    s = 128
    t = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19338
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19242] = (32 * ('cd', 36).length) + 160
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19338] = ('cd', 68).length
    idx = 0
    s = (32 * ('cd', 36).length) + 160
    t = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19370
    while idx < ('cd', 68).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19274] = address(cd[100])
    create contract with 0 wei
                    code: code.data[1291 len 19018], address(cd[4]), Array(len=address(cd[100]), data=mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 19306 len (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 64]), (32 * ('cd', 36).length) + 160
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor0[address(create.new_address)] = 1
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160] = 96
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = ('cd', 36).length
    idx = 0
    s = 128
    t = (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288
    while idx < ('cd', 36).length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 192] = (32 * ('cd', 36).length) + 128
    mem[(64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288] = mem[(32 * ('cd', 36).length) + 128]
    idx = 0
    s = (32 * ('cd', 36).length) + 160
    t = (64 * ('cd', 36).length) + (32 * ('cd', 68).length) + 320
    while idx < mem[(32 * ('cd', 36).length) + 128]:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x34217c19: mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 160 len 64], address(cd[100]), mem[(32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256 len (32 * ('cd', 36).length) + (32 * mem[(32 * ('cd', 36).length) + 128]) + 64], address(cd[4]), address(create.new_address)
    return address(create.new_address)
}



}
