contract main {




// =====================  Runtime code  =====================


#
#  - sub_d7648e28(?)
#
const houseEdgeDivisor = 1000


address owner;
uint256 houseEdge;
address diceAddress;

function Dice() {
    return diceAddress
}

function owner() {
    return owner
}

function houseEdge() {
    return houseEdge
}

function _fallback() payable {
  stop
}

function sub_69bdc62d(?) {
    require arg1 - 1
    return ((((101 * arg2) - (arg1 * arg2) / arg1 - 1 * houseEdge) + (arg2 * houseEdge) / 1000) - arg2)
}

function withdraw() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getContract(address arg1) {
    diceAddress = arg1
    require ext_code.size(diceAddress)
    call diceAddress.0x3ccfd60b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
