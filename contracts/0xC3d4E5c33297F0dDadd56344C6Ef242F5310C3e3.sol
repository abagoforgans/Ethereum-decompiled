contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor2 = 421512 * 24 * 3600
    stor3 = 0
    stor4 = 20000000 * 10^18
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    create contract with 0 wei
                    code: code.data[4101 len 2635]
    require create.new_address
    stor1 = address(create.new_address)
    return code.data[206 len 3895]
}



// =====================  Runtime code  =====================


address owner;
address etlContractAddress;
uint256 endTime;
uint256 currentSupply;
uint256 stor4;
uint8 stor5;

function endTime() {
    return endTime
}

function etlContract() {
    return etlContractAddress
}

function currentSupply() {
    return currentSupply
}

function isFinalized() {
    return bool(stor5)
}

function owner() {
    return owner
}

function hasEnded() {
    return bool(stor5)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= eth.balance(this.address)
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function _fallback() payable {
    require msg.sender
    require not stor5
    if block.timestamp > endTime:
        emit Finalized()
        stor5 = 1
        revert
    if currentSupply >= stor4:
        emit Finalized()
        stor5 = 1
        revert
    if msg.value <= msg.value + eth.balance(msg.sender) / 1000:
        require msg.value == msg.value + eth.balance(msg.sender) / 1000
    else:
        require msg.value + eth.balance(msg.sender) / 1000 <= msg.value
        call msg.sender with:
           value msg.value - (msg.value + eth.balance(msg.sender) / 1000) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    currentSupply += eth.balance(msg.sender)
    require ext_code.size(etlContractAddress)
    call etlContractAddress.copyBalance(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}



}
