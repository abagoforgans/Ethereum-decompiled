contract main {




// =====================  Runtime code  =====================


array of address addressArray;
address sub_a9570cd1Address;
address factoryAddress;

function addressArray(uint256 arg1) {
    require arg1 < addressArray.length
    return addressArray[arg1]
}

function factoryAddress() {
    return factoryAddress
}

function sub_a9570cd1(?) {
    return sub_a9570cd1Address
}

function _fallback() payable {
    revert
}

function changeFactoryAddress(address arg1) {
    require msg.sender == sub_a9570cd1Address
    require not factoryAddress
    factoryAddress = arg1
}

function addContractAddress(address arg1) {
    require msg.sender == factoryAddress
    addressArray.length++
    addressArray[addressArray.length] = arg1
}

function checkContract(address arg1) {
    require arg1
    idx = 0
    while idx < addressArray.length:
        mem[0] = 0
        if addressArray[idx] != arg1:
            idx = idx + 1
            continue 
        return 1
    return 0
}



}
