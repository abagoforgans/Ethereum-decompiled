contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() {
    require code.data[7252 len 32] >= block.timestamp
    require code.data[7284 len 32] >= code.data[7252 len 32]
    require code.data[7328 len 20]
    stor1 = code.data[7328 len 20]
    create contract with 0 wei
                    code: code.data[1702 len 5550], code.data[7328 len 20]
    require create.new_address
    stor0 = address(create.new_address)
    stor2 = code.data[7252 len 32]
    stor3 = code.data[7284 len 32]
    return code.data[261 len 1441]
}



// =====================  Runtime code  =====================


address sub_713f88d5Address;
address owner;
uint256 startTime;
uint256 endTime;
uint256 weiCrowded;

function endTime() {
    return endTime
}

function sub_713f88d5(?) {
    return sub_713f88d5Address
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function weiCrowded() {
    return weiCrowded
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    require ext_code.size(sub_713f88d5Address)
    call sub_713f88d5Address.isSoleout() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp > endTime:
        require msg.value
        require block.timestamp <= endTime
    else:
        require ext_code.size(sub_713f88d5Address)
        call sub_713f88d5Address.isSoleout() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require msg.value
        require not ext_call.return_data[0]
    require msg.value + weiCrowded >= weiCrowded
    weiCrowded += msg.value
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require 600 * msg.value / msg.value == 600
            if msg.value:
                require msg.value
                require 3000 * msg.value / msg.value == 3000
        require 3600 * msg.value >= 3000 * msg.value
        require ext_code.size(sub_713f88d5Address)
        if 600 * msg.value <= 600:
            call sub_713f88d5Address.0xd7aec375 with:
                 gas gas_remaining - 710 wei
                args 0, 0, 3600 * msg.value, 0, 0
        else:
            call sub_713f88d5Address.0xd7aec375 with:
                 gas gas_remaining - 710 wei
                args 0, 0, 3000 * msg.value, 600 * msg.value, startTime + (2160 * 24 * 3600)
        require ext_call.success
        emit TokenPurchase(msg.value, 3600 * msg.value, msg.sender, arg1);
    else:
        if block.timestamp - startTime / 24 * 3600 >= 7:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                    if msg.value:
                        require msg.value
                        require 3000 * msg.value / msg.value == 3000
                require 3000 * msg.value >= 3000 * msg.value
                require ext_code.size(sub_713f88d5Address)
                call sub_713f88d5Address.0xd7aec375 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, 3000 * msg.value, 0, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 3000 * msg.value, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 600 * msg.value / msg.value == 600
                    if msg.value:
                        require msg.value
                        require 3000 * msg.value / msg.value == 3000
                require 3600 * msg.value >= 3000 * msg.value
                require ext_code.size(sub_713f88d5Address)
                if 600 * msg.value <= 600:
                    call sub_713f88d5Address.0xd7aec375 with:
                         gas gas_remaining - 710 wei
                        args 0, 0, 3600 * msg.value, 0, 0
                else:
                    call sub_713f88d5Address.0xd7aec375 with:
                         gas gas_remaining - 710 wei
                        args 0, 0, 3000 * msg.value, 600 * msg.value, startTime + (2160 * 24 * 3600)
                require ext_call.success
                emit TokenPurchase(msg.value, 3600 * msg.value, msg.sender, arg1);
        else:
            if msg.value:
                require msg.value
                require 600 * msg.value / msg.value == 600
                if msg.value:
                    require msg.value
                    require 3000 * msg.value / msg.value == 3000
            require 3600 * msg.value >= 3000 * msg.value
            require ext_code.size(sub_713f88d5Address)
            if 600 * msg.value <= 600:
                call sub_713f88d5Address.0xd7aec375 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, 3600 * msg.value, 0, 0
            else:
                call sub_713f88d5Address.0xd7aec375 with:
                     gas gas_remaining - 710 wei
                    args 0, 0, 3000 * msg.value, 600 * msg.value, startTime + (2160 * 24 * 3600)
            require ext_call.success
            emit TokenPurchase(msg.value, 3600 * msg.value, msg.sender, arg1);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require msg.sender
    if block.timestamp > endTime:
        require msg.value
        require block.timestamp <= endTime
    else:
        require ext_code.size(sub_713f88d5Address)
        call sub_713f88d5Address.isSoleout() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require msg.value
        require not ext_call.return_data[0]
    require msg.value + weiCrowded >= weiCrowded
    weiCrowded += msg.value
    if block.timestamp < startTime:
        if msg.value:
            require msg.value
            require 600 * msg.value / msg.value == 600
            if msg.value:
                require msg.value
                require 3000 * msg.value / msg.value == 3000
        require 3600 * msg.value >= 3000 * msg.value
        require ext_code.size(sub_713f88d5Address)
        if 600 * msg.value <= 600:
            call sub_713f88d5Address.0xd7aec375 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(msg.sender), 3600 * msg.value, 0, 0
        else:
            call sub_713f88d5Address.0xd7aec375 with:
                 gas gas_remaining - 710 wei
                args 0, uint32(msg.sender), 3000 * msg.value, 600 * msg.value, startTime + (2160 * 24 * 3600)
        require ext_call.success
        emit TokenPurchase(msg.value, 3600 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp - startTime / 24 * 3600 >= 7:
            if msg.value < 1000 * 10^18:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                    if msg.value:
                        require msg.value
                        require 3000 * msg.value / msg.value == 3000
                require 3000 * msg.value >= 3000 * msg.value
                require ext_code.size(sub_713f88d5Address)
                call sub_713f88d5Address.0xd7aec375 with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), 3000 * msg.value, 0, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 3000 * msg.value, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 600 * msg.value / msg.value == 600
                    if msg.value:
                        require msg.value
                        require 3000 * msg.value / msg.value == 3000
                require 3600 * msg.value >= 3000 * msg.value
                require ext_code.size(sub_713f88d5Address)
                if 600 * msg.value <= 600:
                    call sub_713f88d5Address.0xd7aec375 with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.sender), 3600 * msg.value, 0, 0
                else:
                    call sub_713f88d5Address.0xd7aec375 with:
                         gas gas_remaining - 710 wei
                        args 0, uint32(msg.sender), 3000 * msg.value, 600 * msg.value, startTime + (2160 * 24 * 3600)
                require ext_call.success
                emit TokenPurchase(msg.value, 3600 * msg.value, msg.sender, msg.sender);
        else:
            if msg.value:
                require msg.value
                require 600 * msg.value / msg.value == 600
                if msg.value:
                    require msg.value
                    require 3000 * msg.value / msg.value == 3000
            require 3600 * msg.value >= 3000 * msg.value
            require ext_code.size(sub_713f88d5Address)
            if 600 * msg.value <= 600:
                call sub_713f88d5Address.0xd7aec375 with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), 3600 * msg.value, 0, 0
            else:
                call sub_713f88d5Address.0xd7aec375 with:
                     gas gas_remaining - 710 wei
                    args 0, uint32(msg.sender), 3000 * msg.value, 600 * msg.value, startTime + (2160 * 24 * 3600)
            require ext_call.success
            emit TokenPurchase(msg.value, 3600 * msg.value, msg.sender, msg.sender);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
