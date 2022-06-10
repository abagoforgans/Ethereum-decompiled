contract main {




// =====================  Runtime code  =====================


function _fallback() {
    mem[160 len calldata.size] = call.data[0 len calldata.size]
    require calldata.size >= 20
    require 20 < calldata.size
    idx = 0
    while uint8(idx) < uint8((10 * Mask(4, 252, cd[20]) >> 252) + (Mask(4, 248, cd[20]) >> 248)):
        mem[ceil32(calldata.size) + 160 len 755] = code.data[794 len 755]
        mem[ceil32(calldata.size) + 915] = mem[160 len 20]
        mem[ceil32(calldata.size) + 947] = msg.sender
        create contract with 0 wei
                        code: code.data[794 len 755], Mask(160, 96, mem[160]), msg.sender
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
