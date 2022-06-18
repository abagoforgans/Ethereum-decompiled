contract main {




// =====================  Runtime code  =====================


array of struct stor0;
mapping of address stor1;
mapping of uint256 stor2;
array of uint256 sub_ff9eb9d2;
mapping of address stor4;
mapping of uint256 stor5;

function sub_2b89abe9(?) {
    return sub_ff9eb9d2[arg1][0 len sub_ff9eb9d2[arg1].length]
}

function sub_ff9eb9d2(?) {
    return sub_ff9eb9d2[arg1][0 len sub_ff9eb9d2[arg1].length]
}

function _fallback() payable {
    revert
}

function sub_de3e0771(?) {
    stor0.length++
    stor0[stor0.length][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor0[stor0.length].field_256 = arg2
    stor0[stor0.length].field_512 = msg.sender
    stor1[stor0.length] = msg.sender
    stor2[address(msg.sender)]++
    sub_ff9eb9d2[stor0.length][] = Array(len=arg1.length, data=arg1[all])
    stor4[stor0.length] = arg2
    stor5[address(arg2)]++
}

function sub_b1ee7a08(?) {
    if stor5[address(msg.sender)]:
        mem[128 len 32 * stor5[address(msg.sender)]] = code.data[2988 len 32 * stor5[address(msg.sender)]]
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = idx
        mem[32] = 4
        if stor4[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require s < stor5[address(msg.sender)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor5[address(msg.sender)]) + 192 len floor32(stor5[address(msg.sender)])] = mem[128 len floor32(stor5[address(msg.sender)])]
    return Array(len=stor5[address(msg.sender)], data=mem[128 len floor32(stor5[address(msg.sender)])], mem[(32 * stor5[address(msg.sender)]) + floor32(stor5[address(msg.sender)]) + 192 len (32 * stor5[address(msg.sender)]) - floor32(stor5[address(msg.sender)])]), 
}

function sub_caf50b80(?) {
    if stor2[address(msg.sender)]:
        mem[128 len 32 * stor2[address(msg.sender)]] = code.data[2988 len 32 * stor2[address(msg.sender)]]
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = idx
        mem[32] = 1
        if stor1[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require s < stor2[address(msg.sender)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * stor2[address(msg.sender)]) + 192 len floor32(stor2[address(msg.sender)])] = mem[128 len floor32(stor2[address(msg.sender)])]
    return Array(len=stor2[address(msg.sender)], data=mem[128 len floor32(stor2[address(msg.sender)])], mem[(32 * stor2[address(msg.sender)]) + floor32(stor2[address(msg.sender)]) + 192 len (32 * stor2[address(msg.sender)]) - floor32(stor2[address(msg.sender)])]), 
}



}
