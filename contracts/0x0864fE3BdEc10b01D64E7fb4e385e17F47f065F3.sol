contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = 0
    stor5 = 0
    return code.data[44 len 1822]
}



// =====================  Runtime code  =====================


uint16 stor0; offset 160
uint128 sub_0f8d43cb; offset 160
address creatorAddress;
array of address stor1;
array of struct sub_eaf601b6;
array of struct sub_da0eca89;
uint256 sub_8801f08e;
uint256 sub_c4f95d02;
uint256 sub_d544003d;
array of address sub_f6bbe516;
address storA66C;

function creator() payable {
    return creatorAddress
}

function sub_0f8d43cb(?) payable {
    return (sub_0f8d43cb << 240)
}

function sub_28d8fae7(?) payable {
    return stor1.length
}

function sub_8801f08e(?) payable {
    return sub_8801f08e
}

function sub_c4f95d02(?) payable {
    return sub_c4f95d02
}

function sub_d544003d(?) payable {
    return sub_d544003d
}

function sub_da0eca89(?) payable {
    require arg1 < sub_da0eca89.length
    return uint256(sub_da0eca89[arg1].field_0)
}

function sub_eaf601b6(?) payable {
    require arg1 < sub_eaf601b6.length
    return address(sub_eaf601b6[arg1].field_0)
}

function sub_f6bbe516(?) payable {
    require arg1 < sub_f6bbe516.length
    return sub_f6bbe516[arg1]
}

function _fallback() payable {
  stop
}

function isSigned() payable {
    return sub_c4f95d02 >= sub_d544003d
}

function sub_1bfab8c6(?) payable {
    if sub_da0eca89.length:
        mem[160] = uint256(sub_da0eca89.field_0)
        idx = 160
        s = 0
        while (32 * sub_da0eca89.length) + 128 > idx:
            mem[idx + 32] = uint256(sub_da0eca89[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_da0eca89.length, data=mem[160 len 32 * sub_da0eca89.length])
}

function sub_42ad1721(?) payable {
    if sub_eaf601b6.length:
        mem[160] = address(sub_eaf601b6.field_0)
        idx = 160
        s = 0
        while (32 * sub_eaf601b6.length) + 128 > idx:
            mem[idx + 32] = address(sub_eaf601b6[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_eaf601b6.length, data=mem[160 len 32 * sub_eaf601b6.length])
}

function sign() payable {
    idx = 0
    while uint8(idx) < sub_8801f08e:
        require idx < sub_eaf601b6.length
        mem[0] = 2
        if address(sub_eaf601b6[idx].field_0) == msg.sender:
            require idx < sub_da0eca89.length
            mem[0] = 3
            if not uint256(sub_da0eca89[idx].field_0):
                require idx < sub_da0eca89.length
                mem[0] = 3
                uint256(sub_da0eca89[idx].field_0) = block.timestamp
                sub_c4f95d02++
        idx = idx + 1
        continue 
}

function sub_b3d941fd(?) payable {
    if sub_f6bbe516.length:
        mem[160] = sub_f6bbe516
        if (32 * sub_f6bbe516.length) + 32 > 64:
            mem[192] = storA66C
            idx = 192
            s = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c689
            while (32 * sub_f6bbe516.length) + 128 > idx:
                mem[idx + 32] = stor1[s]
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=sub_f6bbe516.length, data=mem[160 len 32 * sub_f6bbe516.length])
}

function sub_31044037(?) payable {
    mem[96 len 320] = call.data[68 len 320]
    if msg.sender == creatorAddress:
        stor0 = arg1
        stor1.length = arg2
        sub_eaf601b6.length = 10
        s = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace
        idx = 96
        while 416 > idx:
            uint256(stor[s]) = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ad8
        while sub_eaf601b6.length + 0x405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5ace > idx:
            address(stor[idx]) = 0
            idx = idx + 1
            continue 
        sub_8801f08e = arg3
        sub_da0eca89.length = arg3
        if not sub_da0eca89.length <= arg3:
            idx = arg3
            while sub_da0eca89.length > idx:
                uint256(sub_da0eca89[idx].field_0) = 0
                idx = idx + 1
                continue 
        sub_d544003d = arg4
}

function sub_14134794(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == creatorAddress:
        sub_f6bbe516.length = arg1.length
        if not arg1.length:
            idx = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688
            while sub_f6bbe516.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                address(stor[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0xa66cc928b5edb82af9bd49922954155ab7b0942694bea4ce44661d9a8736c688
            idx = 128
            while (32 * arg1.length) + 128 > idx:
                uint256(stor[s]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (Mask(251, 0, (32 * arg1.length) + 31) >> 5) - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978
            while sub_f6bbe516.length - 0x599336d74a1247d50642b66dd6abeaa5484f6bd96b415b31bb99e26578c93978 > idx:
                address(stor[idx]) = 0
                idx = idx + 1
                continue 
}



}
