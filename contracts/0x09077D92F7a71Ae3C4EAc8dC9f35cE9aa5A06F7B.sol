contract main {


// =======================  Init code  ======================


mapping of uint8 stor2;

function _fallback() {
    stor2[code.data[666 len 20]] = 1
    stor2[code.data[698 len 20]] = 1
    stor2[code.data[730 len 20]] = 1
    return code.data[236 len 418]
}



// =====================  Runtime code  =====================


address poolContractAddress;
uint256 clientVersion;
mapping of uint8 stor2;

function clientVersion() {
    return clientVersion
}

function poolContract() {
    return poolContractAddress
}

function _fallback() payable {
    revert
}

function updateClientVersion(bytes32 arg1) {
    require stor2[address(msg.sender)]
    clientVersion = arg1
}

function updatePoolContract(address arg1) {
    require stor2[address(msg.sender)]
    poolContractAddress = arg1
}



}
