contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 0
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = 0xfedf5753070db18a33f9500ed55a9bc2457ec92d
    require code.data[2521 len 20]
    stor2 = code.data[2521 len 20]
    return code.data[182 len 2327]
}



// =====================  Runtime code  =====================


const initialTokens = 150000000 * 10^18

const START = (419460 * 3600)

const DAYS = 21


address owner;
address creatorAddress;
address stor2;
uint256 creationTime;
uint8 stor4;
uint256 raisedAmount;

function creator() {
    return creatorAddress
}

function initialized() {
    return bool(stor4)
}

function owner() {
    return owner
}

function raisedAmount() {
    return raisedAmount
}

function creationTime() {
    return creationTime
}

function destroy() {
    require owner == msg.sender
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    selfdestruct(owner)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function tokensAvailable() {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function tokenbalanceOf(address arg1) {
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function getRate() {
    if creationTime + (168 * 24 * 3600) > block.timestamp:
        return 1684
    if creationTime + (336 * 24 * 3600) > block.timestamp:
        return 1588
    if creationTime + (504 * 24 * 3600) <= block.timestamp:
        return 1203
    return 1504
}

function goalReached() {
    if bool(stor4) != 1:
        return (1 == bool(stor4))
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return not bool(ext_call.return_data[0])
}

function initialize() {
    require owner == msg.sender
    require not stor4
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= 150000000 * 10^18
    stor4 = 1
    creationTime = 419460 * 3600
}

function isActive() {
    if bool(stor4) != 1:
        return (1 == bool(stor4))
    if block.timestamp < 419460 * 3600:
        return block.timestamp >= 419460 * 3600
    if block.timestamp > 419964 * 3600:
        return block.timestamp <= 419964 * 3600
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return (ext_call.return_data[0] > 0)
}

function buyTokens() payable {
    require 1 == bool(stor4)
    require block.timestamp >= 419460 * 3600
    require block.timestamp <= 419964 * 3600
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if creationTime + (168 * 24 * 3600) > block.timestamp:
        if msg.value:
            require msg.value
            require 1684 * msg.value / msg.value == 1684
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= 1684 * msg.value
        emit BoughtTokens(1684 * msg.value, msg.value, msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 1684 * msg.value
    else:
        if creationTime + (336 * 24 * 3600) > block.timestamp:
            if msg.value:
                require msg.value
                require 1588 * msg.value / msg.value == 1588
            require ext_code.size(stor2)
            call stor2.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= 1588 * msg.value
            emit BoughtTokens(1588 * msg.value, msg.value, msg.sender);
            require msg.value + raisedAmount >= raisedAmount
            raisedAmount += msg.value
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1588 * msg.value
        else:
            if creationTime + (504 * 24 * 3600) <= block.timestamp:
                if msg.value:
                    require msg.value
                    require 1203 * msg.value / msg.value == 1203
                require ext_code.size(stor2)
                call stor2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1203 * msg.value
                emit BoughtTokens(1203 * msg.value, msg.value, msg.sender);
                require msg.value + raisedAmount >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1203 * msg.value
            else:
                if msg.value:
                    require msg.value
                    require 1504 * msg.value / msg.value == 1504
                require ext_code.size(stor2)
                call stor2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1504 * msg.value
                emit BoughtTokens(1504 * msg.value, msg.value, msg.sender);
                require msg.value + raisedAmount >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1504 * msg.value
    require ext_call.success
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require 1 == bool(stor4)
    require block.timestamp >= 419460 * 3600
    require block.timestamp <= 419964 * 3600
    require ext_code.size(stor2)
    call stor2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if creationTime + (168 * 24 * 3600) > block.timestamp:
        if msg.value:
            require msg.value
            require 1684 * msg.value / msg.value == 1684
        require ext_code.size(stor2)
        call stor2.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] >= 1684 * msg.value
        emit BoughtTokens(1684 * msg.value, msg.value, msg.sender);
        require msg.value + raisedAmount >= raisedAmount
        raisedAmount += msg.value
        require ext_code.size(stor2)
        call stor2.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 1684 * msg.value
    else:
        if creationTime + (336 * 24 * 3600) > block.timestamp:
            if msg.value:
                require msg.value
                require 1588 * msg.value / msg.value == 1588
            require ext_code.size(stor2)
            call stor2.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require ext_call.return_data[0] >= 1588 * msg.value
            emit BoughtTokens(1588 * msg.value, msg.value, msg.sender);
            require msg.value + raisedAmount >= raisedAmount
            raisedAmount += msg.value
            require ext_code.size(stor2)
            call stor2.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1588 * msg.value
        else:
            if creationTime + (504 * 24 * 3600) <= block.timestamp:
                if msg.value:
                    require msg.value
                    require 1203 * msg.value / msg.value == 1203
                require ext_code.size(stor2)
                call stor2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1203 * msg.value
                emit BoughtTokens(1203 * msg.value, msg.value, msg.sender);
                require msg.value + raisedAmount >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1203 * msg.value
            else:
                if msg.value:
                    require msg.value
                    require 1504 * msg.value / msg.value == 1504
                require ext_code.size(stor2)
                call stor2.0x70a08231 with:
                     gas gas_remaining - 710 wei
                    args this.address
                require ext_call.success
                require ext_call.return_data[0] >= 1504 * msg.value
                emit BoughtTokens(1504 * msg.value, msg.value, msg.sender);
                require msg.value + raisedAmount >= raisedAmount
                raisedAmount += msg.value
                require ext_code.size(stor2)
                call stor2.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1504 * msg.value
    require ext_call.success
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
