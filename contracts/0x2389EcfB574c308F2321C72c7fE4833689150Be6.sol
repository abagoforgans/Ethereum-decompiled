contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    require code.data[1284 len 20]
    stor2 = code.data[1284 len 20]
    stor1 = code.data[1316 len 20]
    stor3 = code.data[1348 len 20]
    return code.data[171 len 1101]
}



// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1


address owner;
address tokenContractAddress;
address vaultAddress;
address arcTokenAddress;

function vaultAddress() {
    return vaultAddress
}

function tokenContract() {
    return tokenContractAddress
}

function owner() {
    return owner
}

function arcToken() {
    return arcTokenAddress
}

function _fallback() payable {
    revert 
}

function proxyPayment(address arg1) payable {
    revert 
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setVault(address arg1) {
    require owner == msg.sender
    vaultAddress = arg1
}

function convert(uint256 arg1) {
    require ext_code.size(arcTokenAddress)
    call arcTokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas 100000 wei
        args msg.sender, vaultAddress, arg1
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.generateTokens(address rg1, uint256 rg2) with:
         gas gas_remaining - 50 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
}



}
