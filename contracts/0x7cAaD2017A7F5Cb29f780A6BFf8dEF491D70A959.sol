contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[75 len 2096]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_3345906f;
mapping of uint256 sub_366862fc;
uint256 sub_c7c627d5;
mapping of struct logs;

function getLogs(uint256 arg1) {
    mem[160] = logs[arg1][3].field_0
    idx = 160
    s = 0
    while logs[arg1][3].length + 128 > idx:
        mem[idx + 32] = logs[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return logs[arg1].field_0, 
           logs[arg1].field_256,
           logs[arg1].field_512,
           Array(len=logs[arg1][3].length, data=mem[160 len logs[arg1][3].length]),
           logs[arg1].field_1024
}

function sub_3345906f(?) {
    return sub_3345906f[address(arg1)]
}

function sub_366862fc(?) {
    return sub_366862fc[address(arg1)]
}

function sub_c7c627d5(?) {
    return sub_c7c627d5
}

function _fallback() payable {
    revert
}

function getEthBalance(address arg1) {
    return eth.balance(arg1)
}

function sub_1419e3e6(?) {
    sub_3345906f[address(msg.sender)] -= arg1
}

function sub_3786ce8a(?) {
    require stor0 == msg.sender
    sub_366862fc[address(arg1)] = arg2
}

function sub_00d2285c(?) {
    require stor0 == msg.sender
    sub_366862fc[address(arg1)] += arg2
}

function addUser(address arg1) {
    sub_3345906f[address(arg1)] = 0
    sub_366862fc[address(arg1)] = 0
}

function sub_d8ba95a0(?) {
    require sub_366862fc[address(msg.sender)] >= arg2
    require arg1 != msg.sender
    require arg2 <= 3
    sub_3345906f[address(arg1)] += arg2
    sub_366862fc[address(msg.sender)] -= arg2
    emit 0xc4b32d7f: arg2, Array(len=arg3.length, data=arg3[all]), block.timestamp, msg.sender, arg1
    logs[stor5].field_0 = msg.sender
    logs[stor5].field_256 = arg1
    logs[stor5].field_512 = arg2
    logs[stor5][3][].field_0 = Array(len=arg3.length, data=arg3[all])
    logs[stor5].field_1024 = block.timestamp
    logs[stor5].field_1280 = sub_c7c627d5
    sub_c7c627d5++
}



}
