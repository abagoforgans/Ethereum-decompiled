contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 4304]




// =====================  Runtime code  =====================


#
#  - kissBTCCallback(uint256 arg1, uint256 arg2)
#
address stor0;
uint256 stor1;
mapping of uint8 stor2;
mapping of struct stor3;

function _fallback() payable {
  stop
}

function sendBitcoin(string arg1, uint256 arg2) payable {
    call 0x6777c314b412f0196aca852632969f63e7971340.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    call 0x6777c314b412f0196aca852632969f63e7971340.'ARD3' with:
         gas gas_remaining - 25050 wei
        args arg2, address(this.address), 300000
    require ext_call.success
    uint8(stor2[ext_call.return_data[0]]) = 1
    uint256(stor2[ext_call.return_data[0]][1][]) = Array(len=arg1.length, data=arg1[all])
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call stor0.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != 0:
        stor1 = ext_call.return_data[0] or Mask(96, 160, stor1)
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
    else:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
        else:
            if ext_code.size(0x9efbea6358bed926b293d2ce63a730d6d98d43dd) > 0:
                stor0 = 0x9efbea6358bed926b293d2ce63a730d6d98d43dd
            else:
                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
        call stor0.getAddress() with:
             gas gas_remaining - 25050 wei
        require ext_call.success
        stor1 = ext_call.return_data[0] or Mask(96, 160, stor1)
        call address(ext_call.return_data[0]).cbAddress() with:
             gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[0] = arg1
    mem[32] = 3
    if stor3[arg1].field_0:
        mem[64] = ceil32(arg2.length) + 160
        mem[ceil32(arg2.length) + 128] = 0
        idx = 2
        s = 0
        s = 0
        s = 0
        while idx < 42:
            require idx < arg2.length
            require idx + 1 < arg2.length
            if mem[idx + 128 len 1] >= 97:
                if mem[idx + 128 len 1] <= 102:
                    if mem[idx + 129 len 1] >= 97:
                        if mem[idx + 129 len 1] <= 102:
                            idx = idx + 2
                            s = mem[idx + 129 len 1] - 87
                            s = mem[idx + 128 len 1] - 87
                            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 87
                            continue 
                    if mem[idx + 129 len 1] < 48:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                        continue 
                    if mem[idx + 129 len 1] > 57:
                        idx = idx + 2
                        s = mem[idx + 129 len 1]
                        s = mem[idx + 128 len 1] - 87
                        s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87)
                        continue 
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 48
                    s = mem[idx + 128 len 1] - 87
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 87) - 48
                    continue 
            if mem[idx + 128 len 1] < 48:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
                continue 
            if mem[idx + 128 len 1] > 57:
                if mem[idx + 129 len 1] >= 97:
                    if mem[idx + 129 len 1] <= 102:
                        idx = idx + 2
                        s = mem[idx + 129 len 1] - 87
                        s = mem[idx + 128 len 1]
                        s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 87
                        continue 
                if mem[idx + 129 len 1] < 48:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                if mem[idx + 129 len 1] > 57:
                    idx = idx + 2
                    s = mem[idx + 129 len 1]
                    s = mem[idx + 128 len 1]
                    s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244)
                    continue 
                idx = idx + 2
                s = mem[idx + 129 len 1] - 48
                s = mem[idx + 128 len 1]
                s = (256 * s) + mem[idx + 129 len 1] + (Mask(8, 248, mem[idx + 128]) >> 244) - 48
                continue 
            if mem[idx + 129 len 1] >= 97:
                if mem[idx + 129 len 1] <= 102:
                    idx = idx + 2
                    s = mem[idx + 129 len 1] - 87
                    s = mem[idx + 128 len 1] - 48
                    s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 87
                    continue 
            if mem[idx + 129 len 1] < 48:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
                continue 
            if mem[idx + 129 len 1] > 57:
                idx = idx + 2
                s = mem[idx + 129 len 1]
                s = mem[idx + 128 len 1] - 48
                s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48)
                continue 
            idx = idx + 2
            s = mem[idx + 129 len 1] - 48
            s = mem[idx + 128 len 1] - 48
            s = (256 * s) + mem[idx + 129 len 1] + (16 * mem[idx + 128 len 1] - 48) - 48
            continue 
        call address(s) with:
           value stor3[arg1].field_256 wei
             gas 0 wei
        stor3[arg1].field_0 = 0
        stor3[arg1].field_256 = 0
}



}
