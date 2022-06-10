contract main {




// =====================  Runtime code  =====================


const name = 'FundCenter'

const symbol = 'FundCenter'


uint256 stor0;
uint256 stor1;
uint8 stor2;
address CEOAddress; offset 8
address COOAddress;
address gameAddress;
mapping of uint256 sub_83a5fa83;
mapping of uint256 withdraws;

function withdraws(address arg1) {
    return withdraws[arg1]
}

function sub_83a5fa83(?) {
    return sub_83a5fa83[arg1]
}

function CEO() {
    return CEOAddress
}

function gameAddress() {
    return gameAddress
}

function COO() {
    return COOAddress
}

function setCOO(address arg1) {
    if CEOAddress != msg.sender:
        revert with 0, 'Only CEO can operate.'
    COOAddress = arg1
}

function setEnable(bool arg1) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    stor2 = uint8(arg1)
}

function transferCEO(address arg1) {
    if CEOAddress != msg.sender:
        revert with 0, 'Only CEO can operate.'
    CEOAddress = arg1
}

function setGameAddress(address arg1) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    gameAddress = arg1
}

function setLowestClaim(uint256 arg1, uint256 arg2) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    stor0 = arg1
    stor1 = arg2
}

function _fallback() payable {
    if bool(stor2) != 1:
        revert with 0, 'The service is closed.'
    if gameAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only receive eth from game address'
}

function withdrawBalanceFromAdmin(uint256 arg1) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    if eth.balance(this.address) < arg1:
        revert with 0, 'Insufficient balance.'
    call CEOAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function recharge() payable {
    if bool(stor2) != 1:
        revert with 0, 'The service is closed.'
    if msg.value < stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The minimum recharge amount does not meet the requirements.'
    require sub_83a5fa83[address(msg.sender)] + msg.value >= sub_83a5fa83[address(msg.sender)]
    sub_83a5fa83[address(msg.sender)] += msg.value
    emit BalanceRecharge(msg.value, uint64(block.timestamp), msg.sender);
}

function withdrawBalanceFromServer(address arg1, uint256 arg2, bytes arg3) {
    if COOAddress != msg.sender:
        revert with 0, 'Only COO can operate.'
    if bool(stor2) != 1:
        revert with 0, 'The service is closed.'
    if eth.balance(this.address) < arg2:
        revert with 0, 'Insufficient balance.'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require withdraws[address(arg1)] + arg2 >= withdraws[address(arg1)]
    withdraws[address(arg1)] += arg2
    emit BalanceWithdraw(arg2, Array(len=arg3.length, data=arg3[all]), block.timestamp << 192, arg1);
}



}
