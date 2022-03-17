contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor6;
uint256 stor7;
uint16 stor10;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = block.timestamp
    stor6 = 0
    stor7 = 0
    stor10 = 0
    return code.data[59 len 1917]
}



// =====================  Runtime code  =====================


address creatorAddress;
array of address stor1;
uint16 sub_0f8d43cb;
uint256 sub_28d8fae7;
array of struct sub_eaf601b6;
array of struct stor5;
uint256 sub_8801f08e;
uint256 sub_c4f95d02;
uint256 sub_d544003d;
array of address sub_f6bbe516;
uint8 sub_bc762143;
uint8 sub_6bf4d71f; offset 8
array of uint256 sub_da0eca89;
address stor6E15;

function creator() payable {
    return creatorAddress
}

function sub_0f8d43cb(?) payable {
    return sub_0f8d43cb
}

function sub_28d8fae7(?) payable {
    return sub_28d8fae7
}

function sub_6bf4d71f(?) payable {
    return sub_6bf4d71f
}

function sub_8801f08e(?) payable {
    return sub_8801f08e
}

function creationTimestamp() payable {
    return stor1.length
}

function sub_bc762143(?) payable {
    return sub_bc762143
}

function sub_c4f95d02(?) payable {
    return sub_c4f95d02
}

function sub_d544003d(?) payable {
    return sub_d544003d
}

function sub_da0eca89(?) payable {
    require arg1 < stor5.length
    return sub_da0eca89[arg1]
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
    if stor5.length:
        mem[160] = uint256(stor5.field_0)
        idx = 160
        s = 0
        while (32 * stor5.length) + 128 > idx:
            mem[idx + 32] = uint256(stor5[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor5.length, data=mem[160 len 32 * stor5.length])
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
        mem[0] = 4
        if address(sub_eaf601b6[idx].field_0) == msg.sender:
            require idx < stor5.length
            mem[0] = 5
            if not sub_da0eca89[idx]:
                require idx < stor5.length
                mem[0] = 5
                sub_da0eca89[idx] = block.timestamp
                sub_c4f95d02++
        idx = idx + 1
        continue 
}

function sub_b3d941fd(?) payable {
    if sub_f6bbe516.length:
        mem[160] = sub_f6bbe516
        if (32 * sub_f6bbe516.length) + 32 > 64:
            mem[192] = stor6E15
            idx = 192
            s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7b0
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
        if not sub_6bf4d71f:
            sub_0f8d43cb = arg1
            sub_28d8fae7 = arg2
            sub_eaf601b6.length = 10
            s = 0x8a35acfbc15ff81a39ae7d344fd709f28e8600b4aa8c65c6b64bfe7fe36bd19b
            idx = 96
            while 416 > idx:
                uint256(stor[s]) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = -53278079350709166316280423202849322519190186591071851114874353210178472783451
            while sub_eaf601b6.length - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
                address(stor[idx]) = 0
                idx = idx + 1
                continue 
            sub_8801f08e = arg3
            stor5.length = arg3
            if not stor5.length <= arg3:
                idx = arg3
                while stor5.length > idx:
                    uint256(stor5[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            sub_d544003d = arg4
            stor1.length = block.timestamp
            sub_6bf4d71f = 1
}

function sub_14134794(?) payable {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == creatorAddress:
        if not sub_bc762143:
            sub_f6bbe516.length = arg1.length
            if not arg1.length:
                idx = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
                while sub_f6bbe516.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
                idx = 128
                while (32 * arg1.length) + 128 > idx:
                    uint256(stor[s]) = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, (32 * arg1.length) + 31) >> 5) + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af
                while sub_f6bbe516.length + 0x6e1540171b6c0c960b71a7020d9f60077f6af931a8bbf590da0223dacf75c7af > idx:
                    address(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            sub_bc762143 = 1
}



}
