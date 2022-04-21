contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    uint8(stor1.field_160) = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2321 len 20]
    address(stor1.field_0) = code.data[2321 len 20]
    return code.data[164 len 2145]
}



// =====================  Runtime code  =====================


const RATE = 650

const START = (419654 * 3600)

const DAYS = 30

const CAP = 15000


address owner;
uint8 stor1; offset 160
address stor1;
uint256 raisedAmount;
uint256 bonusesGiven;
uint256 numberOfTransactions;

function initialized() {
    return bool(uint8(stor1.field_160))
}

function bonusesGiven() {
    return bonusesGiven
}

function owner() {
    return owner
}

function raisedAmount() {
    return raisedAmount
}

function numberOfTransactions() {
    return numberOfTransactions
}

function destroy() {
    require owner == msg.sender
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(owner)
}

function goalReached() {
    return raisedAmount >= 15000 * 10^18
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function tokensAvailable() {
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function isActive() {
    if bool(uint8(stor1.field_160)) != 1:
        return (bool(uint8(stor1.field_160)) == 1)
    if block.timestamp < 419654 * 3600:
        return block.timestamp >= 419654 * 3600
    if block.timestamp > 420374 * 3600:
        return block.timestamp <= 420374 * 3600
    return (raisedAmount < 15000 * 10^18)
}

function initialize(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor1.field_160)
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] == arg1
    uint8(stor1.field_160) = 1
}

function buyTokens() payable {
    require bool(uint8(stor1.field_160)) == 1
    require block.timestamp >= 419654 * 3600
    require block.timestamp <= 420374 * 3600
    require raisedAmount < 15000 * 10^18
    if msg.value:
        require msg.value
        require 650 * msg.value / msg.value == 650
    if block.timestamp - (419654 * 3600) / 24 * 3600 < 7:
        require (13000 * msg.value / 100) + (650 * msg.value) >= 650 * msg.value
        emit BoughtTokens(((13000 * msg.value / 100) + (650 * msg.value)), msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        require (13000 * msg.value / 100) + bonusesGiven >= bonusesGiven
        bonusesGiven += 13000 * msg.value / 100
        require numberOfTransactions + 1 >= numberOfTransactions
        numberOfTransactions++
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (13000 * msg.value / 100) + (650 * msg.value)
    else:
        if block.timestamp - (419654 * 3600) / 24 * 3600 >= 14:
            require 650 * msg.value >= 650 * msg.value
            emit BoughtTokens((650 * msg.value), msg.sender);
            require msg.value + raisedAmount >= raisedAmount
            raisedAmount += msg.value
            require bonusesGiven >= bonusesGiven
            require numberOfTransactions + 1 >= numberOfTransactions
            numberOfTransactions++
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 650 * msg.value
        else:
            require (6500 * msg.value / 100) + (650 * msg.value) >= 650 * msg.value
            emit BoughtTokens(((6500 * msg.value / 100) + (650 * msg.value)), msg.sender);
            require msg.value + raisedAmount >= raisedAmount
            raisedAmount += msg.value
            require (6500 * msg.value / 100) + bonusesGiven >= bonusesGiven
            bonusesGiven += 6500 * msg.value / 100
            require numberOfTransactions + 1 >= numberOfTransactions
            numberOfTransactions++
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (6500 * msg.value / 100) + (650 * msg.value)
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require bool(uint8(stor1.field_160)) == 1
    require block.timestamp >= 419654 * 3600
    require block.timestamp <= 420374 * 3600
    require raisedAmount < 15000 * 10^18
    if msg.value:
        require msg.value
        require 650 * msg.value / msg.value == 650
    if block.timestamp - (419654 * 3600) / 24 * 3600 < 7:
        require (13000 * msg.value / 100) + (650 * msg.value) >= 650 * msg.value
        emit BoughtTokens(((13000 * msg.value / 100) + (650 * msg.value)), msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        require (13000 * msg.value / 100) + bonusesGiven >= bonusesGiven
        bonusesGiven += 13000 * msg.value / 100
        require numberOfTransactions + 1 >= numberOfTransactions
        numberOfTransactions++
        require ext_code.size(address(stor1.field_0))
        call address(stor1.field_0).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (13000 * msg.value / 100) + (650 * msg.value)
    else:
        if block.timestamp - (419654 * 3600) / 24 * 3600 >= 14:
            require 650 * msg.value >= 650 * msg.value
            emit BoughtTokens((650 * msg.value), msg.sender);
            require msg.value + raisedAmount >= raisedAmount
            raisedAmount += msg.value
            require bonusesGiven >= bonusesGiven
            require numberOfTransactions + 1 >= numberOfTransactions
            numberOfTransactions++
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 650 * msg.value
        else:
            require (6500 * msg.value / 100) + (650 * msg.value) >= 650 * msg.value
            emit BoughtTokens(((6500 * msg.value / 100) + (650 * msg.value)), msg.sender);
            require msg.value + raisedAmount >= raisedAmount
            raisedAmount += msg.value
            require (6500 * msg.value / 100) + bonusesGiven >= bonusesGiven
            bonusesGiven += 6500 * msg.value / 100
            require numberOfTransactions + 1 >= numberOfTransactions
            numberOfTransactions++
            require ext_code.size(address(stor1.field_0))
            call address(stor1.field_0).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (6500 * msg.value / 100) + (650 * msg.value)
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
