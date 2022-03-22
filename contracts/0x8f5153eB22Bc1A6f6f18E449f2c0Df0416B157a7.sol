contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


array of uint256 name;
address owner;
array of uint256 participant;

function name() payable {
    return name[0 len name.length]
}

function participant(address arg1) payable {
    return participant[arg1][0 len participant[arg1].length]
}

function owner() payable {
    return owner
}

function _fallback() payable {
  stop
}

function withdraw() payable {
    call owner with:
       value eth.balance(this.address) wei
         gas 0 wei
}



}
