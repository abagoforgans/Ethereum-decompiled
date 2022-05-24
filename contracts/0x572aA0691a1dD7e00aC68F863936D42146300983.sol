contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
address stor4;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 0
    stor3.length.field_8 = mem[128 len 31]
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor4 = msg.sender
    stor1[address(msg.sender)] = 3 * 10^15
    return code.data[279 len 2172]
}



// =====================  Runtime code  =====================


const name = 'LOVE'

const totalSupply = 3 * 10^15

const decimals = 6

const version = '1.0'

const symbol = 'LOVE'


mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 migrationInfo;
address migrationInfoSetterAddress;

function migrationInfo() {
    return migrationInfo[0 len migrationInfo.length]
}

function balances(address arg1) {
    return balances[arg1]
}

function migrationInfoSetter() {
    return migrationInfoSetterAddress
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeMigrationInfoSetter(address arg1) {
    require migrationInfoSetterAddress == msg.sender
    migrationInfoSetterAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require migrationInfoSetterAddress == arg1
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function setMigrationInfo(string arg1) {
    require migrationInfoSetterAddress == msg.sender
    migrationInfo.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        migrationInfo[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while migrationInfo.length + 31 / 32 > idx:
        migrationInfo[idx] = 0
        idx = idx + 1
        continue 
    emit MigrationInfoSet(Array(len=arg1.length, data=arg1[all]));
}



}
