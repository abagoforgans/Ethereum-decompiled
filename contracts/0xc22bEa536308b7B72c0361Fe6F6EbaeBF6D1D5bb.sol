contract main {


// =======================  Init code  ======================


uint8 stor4;

function _fallback() payable {
    stor4 = 0
    require not msg.value
    return code.data[55 len 795]
}



// =====================  Runtime code  =====================


address contractOwner;
uint256 amountRaised;
address coldStorageAddress;
mapping of uint256 balanceOf;
uint8 stor4;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function amountRaised() {
    return amountRaised
}

function contractOwner() {
    return contractOwner
}

function coldStorage() {
    return coldStorageAddress
}

function _fallback() payable {
    require not stor4
}

function Crowdsale(address arg1, address arg2) {
    contractOwner = arg1
    coldStorageAddress = arg2
}



}
