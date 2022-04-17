contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 30
    stor3 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[2104 len 20]
    stor1 = code.data[2104 len 20]
    return code.data[143 len 1949]
}



// =====================  Runtime code  =====================


const RATE = 1000

const START = (419462 * 3600)

const CAP = 10000


address owner;
address stor1;
uint256 DAYS;
uint256 raisedAmount;

function owner() {
    return owner
}

function DAYS() {
    return DAYS
}

function raisedAmount() {
    return raisedAmount
}

function destroy() {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(owner)
}

function goalReached() {
    return raisedAmount >= 10000 * 10^18
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function isActive() {
    require (24 * 3600 * DAYS) + (419462 * 3600) >= 419462 * 3600
    return block.timestamp <= (24 * 3600 * DAYS) + (419462 * 3600)
}

function tokensAvailable() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function buyTokens() payable {
    require raisedAmount < 10000 * 10^18
    require (24 * 3600 * DAYS) + (419462 * 3600) >= 419462 * 3600
    require block.timestamp <= (24 * 3600 * DAYS) + (419462 * 3600)
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if block.timestamp <= 419630 * 3600:
        if 1000 * msg.value:
            require 1000 * msg.value
            require 30000 * msg.value / 1000 * msg.value == 30
        require (30000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
        emit BoughtTokens(((30000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (30000 * msg.value / 100) + (1000 * msg.value)
    else:
        if block.timestamp <= 419798 * 3600:
            if 1000 * msg.value:
                require 1000 * msg.value
                require 25000 * msg.value / 1000 * msg.value == 25
            require (25000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
            emit BoughtTokens(((25000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (25000 * msg.value / 100) + (1000 * msg.value)
        else:
            if block.timestamp <= 419966 * 3600:
                if 1000 * msg.value:
                    require 1000 * msg.value
                    require 20000 * msg.value / 1000 * msg.value == 20
                require (20000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
                emit BoughtTokens(((20000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (20000 * msg.value / 100) + (1000 * msg.value)
            else:
                if block.timestamp > 420182 * 3600:
                    require 1000 * msg.value >= 1000 * msg.value
                    emit BoughtTokens((1000 * msg.value), msg.sender);
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1000 * msg.value
                else:
                    if 1000 * msg.value:
                        require 1000 * msg.value
                        require 10000 * msg.value / 1000 * msg.value == 10
                    require (10000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
                    emit BoughtTokens(((10000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10000 * msg.value / 100) + (1000 * msg.value)
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require raisedAmount < 10000 * 10^18
    require (24 * 3600 * DAYS) + (419462 * 3600) >= 419462 * 3600
    require block.timestamp <= (24 * 3600 * DAYS) + (419462 * 3600)
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    if block.timestamp <= 419630 * 3600:
        if 1000 * msg.value:
            require 1000 * msg.value
            require 30000 * msg.value / 1000 * msg.value == 30
        require (30000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
        emit BoughtTokens(((30000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
        require ext_code.size(stor1)
        call stor1.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (30000 * msg.value / 100) + (1000 * msg.value)
    else:
        if block.timestamp <= 419798 * 3600:
            if 1000 * msg.value:
                require 1000 * msg.value
                require 25000 * msg.value / 1000 * msg.value == 25
            require (25000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
            emit BoughtTokens(((25000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, (25000 * msg.value / 100) + (1000 * msg.value)
        else:
            if block.timestamp <= 419966 * 3600:
                if 1000 * msg.value:
                    require 1000 * msg.value
                    require 20000 * msg.value / 1000 * msg.value == 20
                require (20000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
                emit BoughtTokens(((20000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
                require ext_code.size(stor1)
                call stor1.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (20000 * msg.value / 100) + (1000 * msg.value)
            else:
                if block.timestamp > 420182 * 3600:
                    require 1000 * msg.value >= 1000 * msg.value
                    emit BoughtTokens((1000 * msg.value), msg.sender);
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 1000 * msg.value
                else:
                    if 1000 * msg.value:
                        require 1000 * msg.value
                        require 10000 * msg.value / 1000 * msg.value == 10
                    require (10000 * msg.value / 100) + (1000 * msg.value) >= 1000 * msg.value
                    emit BoughtTokens(((10000 * msg.value / 100) + (1000 * msg.value)), msg.sender);
                    require ext_code.size(stor1)
                    call stor1.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (10000 * msg.value / 100) + (1000 * msg.value)
    require ext_call.success
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
