contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1433]
}



// =====================  Runtime code  =====================


address stor0;
uint256 seedPrice;
uint256 execPrice;
uint256 gasPrice;
uint256 minimumGasLimit;
mapping of uint256 stor5;
mapping of uint256 stor6;

function getGasPrice() payable {
    return gasPrice
}

function getExecPrice() payable {
    return execPrice
}

function getSeedPrice() payable {
    return seedPrice
}

function getMinimumGasLimit() payable {
    return minimumGasLimit
}

function kill() payable {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getSeedCost(uint256 arg1) payable {
    return ((arg1 * gasPrice) + seedPrice)
}

function getExecCost(uint256 arg1) payable {
    return ((arg1 * gasPrice) + execPrice)
}

function setGasPrice(uint256 arg1) payable {
    require msg.sender == stor0
    gasPrice = arg1
}

function setSeedPrice(uint256 arg1) payable {
    require msg.sender == stor0
    seedPrice = arg1
}

function setExecPrice(uint256 arg1) payable {
    require stor0 == msg.sender
    execPrice = arg1
}

function setMinimumGasLimit(uint256 arg1) payable {
    require msg.sender == stor0
    minimumGasLimit = arg1
}

function withdraw(address arg1) payable {
    require msg.sender == stor0
    call arg1 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function seedWithGasLimit(uint256 arg1) payable {
    require msg.value >= (arg1 * gasPrice) + seedPrice
    if msg.value - (arg1 * gasPrice) - seedPrice > 0:
        call msg.sender with:
           value msg.value - (arg1 * gasPrice) - seedPrice wei
             gas 0 wei
    require arg1 <= block.gas_limit
    require arg1 >= minimumGasLimit
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor5[address(msg.sender)]++
    emit SeedLog(msg.sender, sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor5[address(msg.sender)]), arg1);
    return sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor5[address(msg.sender)])
}

function seed() payable {
    require msg.value >= (minimumGasLimit * gasPrice) + seedPrice
    if msg.value - (minimumGasLimit * gasPrice) - seedPrice > 0:
        call msg.sender with:
           value msg.value - (minimumGasLimit * gasPrice) - seedPrice wei
             gas 0 wei
    require minimumGasLimit <= block.gas_limit
    require minimumGasLimit >= minimumGasLimit
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor5[address(msg.sender)]++
    emit SeedLog(msg.sender, sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor5[address(msg.sender)]), minimumGasLimit);
    return sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor5[address(msg.sender)])
}

function execWithGasLimit(bytes32 arg1, bytes32 arg2, uint256 arg3, uint256 arg4) payable {
    require msg.value >= (arg4 * gasPrice) + execPrice
    if msg.value - (arg4 * gasPrice) - execPrice > 0:
        call msg.sender with:
           value msg.value - (arg4 * gasPrice) - execPrice wei
             gas 0 wei
    require arg4 <= block.gas_limit
    require arg4 >= minimumGasLimit
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor6[address(msg.sender)]++
    emit ExecLog(address(msg.sender), sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor6[address(msg.sender)]), arg4, arg1, arg2, arg3);
    return sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor6[address(msg.sender)])
}

function exec(bytes32 arg1, bytes32 arg2, uint256 arg3) payable {
    require msg.value >= (minimumGasLimit * gasPrice) + execPrice
    if msg.value - (minimumGasLimit * gasPrice) - execPrice > 0:
        call msg.sender with:
           value msg.value - (minimumGasLimit * gasPrice) - execPrice wei
             gas 0 wei
    require minimumGasLimit <= block.gas_limit
    require minimumGasLimit >= minimumGasLimit
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    stor6[address(msg.sender)]++
    emit ExecLog(address(msg.sender), sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor6[address(msg.sender)]), minimumGasLimit, arg1, arg2, arg3);
    return sha3(uint8(bool(ext_call.return_data[0])), this.address, msg.sender, stor6[address(msg.sender)])
}



}
