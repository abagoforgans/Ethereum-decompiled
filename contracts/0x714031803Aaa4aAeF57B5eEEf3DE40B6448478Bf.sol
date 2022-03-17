contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 3759]
}



// =====================  Runtime code  =====================


#
#  - transfer(string arg1, string arg2)
#
uint128 stor0; offset 160
address stor0;
uint256 stor0;
mapping of uint256 sub_59eaac53;
address stor2;
uint256 stor2;

function sub_59eaac53(?) payable {
    return sub_59eaac53[arg1]
}

function kill() payable {
    if address(stor2) != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
  stop
}

function setOwner(address arg1) payable {
    if msg.sender == address(stor2):
        uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_5ad77157(?) payable {
    call address(stor0.field_0).setProofType(bytes1 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    call 0x1d11e5eae3112dbd44f99266872ff1d07c77dce8.getAddress() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    call address(ext_call.return_data[0]).cbAddress() with:
         gas gas_remaining - 25050 wei
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg2.length) + 160] = 9
    mem[ceil32(arg2.length) + 192] = 'parseaddr'
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
    sub_59eaac53[arg1] = 0
    call address(s) with:
       value sub_59eaac53[arg1] wei
         gas 0 wei
    emit 0x6cceb87e: address(s), sub_59eaac53[arg1]
}



}
