contract main {




// =====================  Runtime code  =====================


array of struct sub_50b49f2d;
mapping of uint256 stor2;
mapping of uint8 stor3;
mapping of uint8 stor4;
address primaryAddress;
mapping of uint256 get;
mapping of address token;

function sub_50b49f2d(?) {
    require arg1 < sub_50b49f2d.length
    return sub_50b49f2d[arg1].field_0
}

function sub_7d20abf8(?) {
    return bool(stor3[arg1])
}

function get(bytes32 arg1) {
    require stor3[arg1]
    return get[arg1]
}

function getTokenAddress(bytes32 arg1) {
    require stor3[arg1]
    require token[arg1]
    return token[arg1]
}

function primary() {
    return primaryAddress
}

function sub_cfec719f(?) {
    require stor3[arg1]
    return bool(token[arg1])
}

function sub_e9217944(?) {
    require arg1
    return bool(stor4[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_e97aed3c(?) {
    require msg.sender
    require stor4[address(msg.sender)]
    require stor3[arg1]
    token[arg1] = arg2
}

function set(bytes32 arg1, uint256 arg2) {
    require msg.sender
    require stor4[address(msg.sender)]
    require stor3[arg1]
    get[arg1] = arg2
}

function sub_96fd23a5(?) {
    require msg.sender
    require stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
    emit 0xdbde5a14: msg.sender
}

function transferPrimary(address arg1) {
    require msg.sender == primaryAddress
    require arg1
    primaryAddress = arg1
    emit PrimaryTransferred(arg1);
}

function sub_79d44573(?) {
    require msg.sender == primaryAddress
    require arg1
    require stor4[address(arg1)]
    stor4[address(arg1)] = 0
    emit 0xdbde5a14: arg1
}

function sub_451a5e65(?) {
    require msg.sender == primaryAddress
    require arg1
    require not stor4[address(arg1)]
    stor4[address(arg1)] = 1
    emit 0x2edb648f: arg1
}

function sub_289e029b(?) {
    require msg.sender
    require stor4[address(msg.sender)]
    require not stor3[arg1]
    stor3[arg1] = 1
    stor2[arg1] = sub_50b49f2d.length
    sub_50b49f2d.length++
    sub_50b49f2d[sub_50b49f2d.length].field_0 = arg1
}

function sub_6b8431d4(?) {
    require msg.sender
    require stor4[address(msg.sender)]
    require not stor3[arg1]
    stor3[arg1] = 1
    stor2[arg1] = sub_50b49f2d.length
    sub_50b49f2d.length++
    sub_50b49f2d[sub_50b49f2d.length].field_0 = arg1
    if arg2:
        require msg.sender
        require stor4[address(msg.sender)]
        require stor3[arg1]
        token[arg1] = arg2
}

function sub_1b71a9db(?) {
    require msg.sender
    require stor4[address(msg.sender)]
    require msg.sender
    require stor4[address(msg.sender)]
    require stor3[arg1]
    token[arg1] = 0
    require stor3[arg1]
    stor3[arg1] = 0
    stor2[arg1] = 0
    if stor2[arg1] != sub_50b49f2d.length - 1:
        require sub_50b49f2d.length - 1 < sub_50b49f2d.length
        require stor2[arg1] < sub_50b49f2d.length
        sub_50b49f2d[stor2[arg1]].field_0 = sub_50b49f2d[sub_50b49f2d.length].field_0
        stor2[stor1[stor2[arg1]].field_0] = stor2[arg1]
    sub_50b49f2d.length--
    if sub_50b49f2d.length > sub_50b49f2d.length - 1:
        idx = sub_50b49f2d.length - 1
        while sub_50b49f2d.length > idx:
            sub_50b49f2d[idx].field_0 = 0
            idx = idx + 1
            continue 
    get[arg1] = 0
}

function sub_e5da831f(?) {
    if not sub_50b49f2d.length:
        mem[(32 * sub_50b49f2d.length) + 128] = 32
        mem[(32 * sub_50b49f2d.length) + 160] = sub_50b49f2d.length
        mem[(32 * sub_50b49f2d.length) + 192 len floor32(sub_50b49f2d.length)] = mem[128 len floor32(sub_50b49f2d.length)]
        return memory
          from (32 * sub_50b49f2d.length) + 128
           len (96 * sub_50b49f2d.length) + 64
    mem[128] = uint256(sub_50b49f2d.field_0)
    idx = 128
    s = 0
    while (32 * sub_50b49f2d.length) + 96 > idx:
        mem[idx + 32] = sub_50b49f2d[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_50b49f2d.length) + 192 len floor32(sub_50b49f2d.length)] = mem[128 len floor32(sub_50b49f2d.length)]
    return Array(len=sub_50b49f2d.length, data=mem[128 len floor32(sub_50b49f2d.length)], mem[(32 * sub_50b49f2d.length) + floor32(sub_50b49f2d.length) + 192 len (32 * sub_50b49f2d.length) - floor32(sub_50b49f2d.length)]), 
}



}
