contract main {


// =======================  Init code  ======================


address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;

function _fallback() payable {
    stor8 = 0xb97f7ac9e544a479307a52f900b67eba51300529
    stor9 = 60
    stor10 = 20
    stor11 = 10
    stor12 = 5
    stor13 = 2
    stor14 = 1
    stor15 = 2
    require not msg.value
    return code.data[150 len 7184]
}



// =====================  Runtime code  =====================


#
#  - join(address arg1)
#
const funds = eth.balance(this.address)


mapping of uint256 power;
mapping of address referrer;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
address owner;

function power() {
    return power[address(msg.sender)]
}

function referrer() {
    return referrer[address(msg.sender)]
}

function owner() {
    return owner
}

function referrals(address arg1) {
    return referrer[arg1]
}

function _fallback() payable {
    if not referrer[stor8]:
        referrer[stor8] = owner
    call msg.sender with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdraw(uint256 arg1) payable {
    if owner != msg.sender:
        return 'not owner'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 'success'
}

function check() {
    return stor2[address(msg.sender)], 
           stor3[address(msg.sender)],
           stor4[address(msg.sender)],
           stor5[address(msg.sender)],
           stor6[address(msg.sender)],
           stor7[address(msg.sender)]
}



}
