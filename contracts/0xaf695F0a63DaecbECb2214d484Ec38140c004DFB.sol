contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_24755866(?) payable {
    require calldata.size - 4 >= 128
    require calldata.size - 36 >= 96
    signer = erecover(arg1, arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function sub_1ee64dd8(?) payable {
    require calldata.size - 4 >= 192
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 2:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size - 100 >= 96
    signer = erecover(cd[68], cd[100] << 248, cd[132], cd[164]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if mem[108 len 20] != address(signer):
        if mem[140 len 20] != address(signer):
            return 0
    return 1
}

function sub_29aa9a50(?) payable {
    require calldata.size - 4 >= 224
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 2:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size - 100 >= 96
    signer = erecover(cd[68], cd[100] << 248, cd[132], cd[164]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == address(cd[196]):
        return 0
    if mem[108 len 20] != address(signer):
        if mem[140 len 20] != address(signer):
            return 0
        if mem[108 len 20] != address(cd[196]):
            return 0
    else:
        if mem[140 len 20] != address(cd[196]):
            if mem[140 len 20] != address(signer):
                return 0
            if mem[108 len 20] != address(cd[196]):
                return 0
    return 1
}

function sub_d17897ec(?) payable {
    require calldata.size - 4 >= 288
    require 35 < calldata.size
    require 68 <= calldata.size
    idx = 0
    s = 4
    t = 96
    while idx < 2:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require 99 < calldata.size
    require 132 <= calldata.size
    idx = 0
    s = 68
    t = 160
    while idx < 2:
        mem[t] = address(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require calldata.size - 164 >= 96
    signer = erecover(cd[132], cd[164] << 248, cd[196], cd[228]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) == address(cd[260]):
        return 0
    if mem[108 len 20] == address(signer):
        if mem[172 len 20] != address(cd[260]):
            if mem[204 len 20] != address(cd[260]):
                if mem[172 len 20] != address(signer):
                    if mem[204 len 20] != address(signer):
                        return 0
                if mem[108 len 20] != address(cd[260]):
                    if mem[140 len 20] != address(cd[260]):
                        return 0
    else:
        if mem[140 len 20] != address(signer):
            if mem[172 len 20] != address(signer):
                if mem[204 len 20] != address(signer):
                    return 0
            if mem[108 len 20] != address(cd[260]):
                if mem[140 len 20] != address(cd[260]):
                    return 0
        else:
            if mem[172 len 20] != address(cd[260]):
                if mem[204 len 20] != address(cd[260]):
                    if mem[172 len 20] != address(signer):
                        if mem[204 len 20] != address(signer):
                            return 0
                    if mem[108 len 20] != address(cd[260]):
                        if mem[140 len 20] != address(cd[260]):
                            return 0
    return 1
}



}
