contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = 100 * 10^18
    return code.data[67 len 886]
}



// =====================  Runtime code  =====================


address contract_owner;
mapping of uint256 sub_1479197f;
uint256 sub_e15fa5b2;

function sub_1479197f(?) {
    return sub_1479197f[address(arg1)]
}

function contract_owner() {
    return contract_owner
}

function sub_b60df55f(?) {
    return sub_e15fa5b2
}

function donors(address arg1) {
    return sub_1479197f[arg1]
}

function sub_e15fa5b2(?) {
    return sub_e15fa5b2
}

function destroy() {
    if contract_owner != msg.sender:
    selfdestruct(contract_owner)
}

function _fallback() payable {
    revert 
}

function sub_8fc6e443(?) {
    if contract_owner == msg.sender:
        sub_e15fa5b2 = arg1
}

function fundProject() payable {
    sub_1479197f[address(msg.sender)] += msg.value
    emit 0xfdf8568e: msg.sender, msg.value
}

function refundMoney(address arg1) payable {
    if contract_owner == msg.sender:
        if eth.balance(this.address) >= sub_1479197f[address(arg1)]:
            call arg1 with:
               value sub_1479197f[address(arg1)] wei
                 gas 2300 * is_zero(value) wei
            emit 0x848dea92: address(arg1), sub_1479197f[address(arg1)]
            sub_1479197f[address(arg1)] = 0
}



}
