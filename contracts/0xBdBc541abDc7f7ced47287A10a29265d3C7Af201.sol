contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint8 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1[address(msg.sender)] = 1
    return code.data[72 len 808]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of address config;
mapping of uint8 configBool;
mapping of uint256 configBytes;
mapping of uint256 configUint;

function getConfigBytes(bytes32 arg1) payable {
    return configBytes[arg1]
}

function owner() payable {
    return owner
}

function getConfigBool(bytes32 arg1) payable {
    return uint8(configBool[arg1])
}

function getConfigAddress(bytes32 arg1) payable {
    return address(config[arg1])
}

function getConfigUint(bytes32 arg1) payable {
    return configUint[arg1]
}

function _fallback() payable {
  stop
}

function addAdmin(address arg1) payable {
    require owner == msg.sender
    stor1[address(arg1)] = 1
    return 1
}

function removeAdmin(address arg1) payable {
    require owner == msg.sender
    stor1[address(arg1)] = 0
    return 1
}

function setConfigUint(bytes32 arg1, uint256 arg2) payable {
    require stor1[address(msg.sender)] != 0
    configUint[arg1] = arg2
    return 1
}

function setConfigBytes(bytes32 arg1, bytes32 arg2) payable {
    require stor1[address(msg.sender)] != 0
    configBytes[arg1] = arg2
    return 1
}

function setConfigAddress(bytes32 arg1, address arg2) payable {
    require stor1[address(msg.sender)] != 0
    uint256(config[arg1]) = arg2 or Mask(96, 160, uint256(config[arg1]))
    return 1
}

function setConfigBool(bytes32 arg1, bool arg2) payable {
    require stor1[address(msg.sender)] != 0
    uint256(configBool[arg1]) = arg2 or Mask(248, 8, uint256(configBool[arg1]))
    return 1
}



}
