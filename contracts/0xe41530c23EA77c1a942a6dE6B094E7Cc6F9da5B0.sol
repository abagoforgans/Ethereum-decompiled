contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
address sub_d141c39bAddress;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint16 stor3; offset 160
address sub_9d652a8bAddress;
uint256 sub_ecea385b;
uint256 sub_0cf1b83f;

function sub_0cf1b83f(?) {
    return sub_0cf1b83f
}

function sub_51b88442(?) {
    return bool(uint8(stor3.field_160))
}

function sub_69fc2838(?) {
    return bool(uint8(stor3.field_168))
}

function sub_9d652a8b(?) {
    return sub_9d652a8bAddress
}

function sub_d141c39b(?) {
    return sub_d141c39bAddress
}

function sub_ecea385b(?) {
    return sub_ecea385b
}

function reset() {
    uint16(stor3.field_160) = 0
    sub_ecea385b = 0
    sub_0cf1b83f = 0
}

function _fallback() payable {
    if not address(stor1):
        require not uint256(stor1)
    delegate address(stor1) with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function withdraw() {
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function exit() {
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9d652a8bAddress)
    call sub_9d652a8bAddress.0xe9fad8ee with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellAllCookies() {
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require ext_code.size(sub_d141c39bAddress)
    call sub_d141c39bAddress.0x74c90d0d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9d652a8bAddress)
    call sub_9d652a8bAddress.0x74c90d0d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function proxy() payable {
    mem[64] = 96
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require calldata.size >= 28
    mem[24 len calldata.size] = call.data[0 len calldata.size]
    if not mem[0] % 16:
        call mem[32 len 20].mem[52 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[56 len calldata.size - 32]
        if not Mask(4, 4, mem[0]):
            require ext_call.success
        require Mask(4, 4, mem[0]) == 16
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require mem[0] % 16 == 1
        delegate mem[32 len 20].mem[52 len 4] with:
             gas gas_remaining wei
            args mem[56 len calldata.size - 32]
        if not Mask(4, 4, mem[0]):
            require delegate.return_code
        require Mask(4, 4, mem[0]) == 16
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function sub_d1eb5053(?) {
    if stor0 != msg.sender:
        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
    require block.timestamp >= 424293 * 3600
    if not uint8(stor3.field_160):
        require ext_code.size(0xb577d7d444ecf513b273e4cbadda0776b916a86c)
        call 0xb577d7d444ecf513b273e4cbadda0776b916a86c.0x8620410b with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_9d652a8bAddress)
        call sub_9d652a8bAddress.buy(address arg1) with:
           value 2 * 10 * ext_call.return_data[0] wei
             gas gas_remaining wei
            args 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_d141c39bAddress)
        call sub_d141c39bAddress.buy(address arg1) with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
            args sub_9d652a8bAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0xb577d7d444ecf513b273e4cbadda0776b916a86c)
        call 0xb577d7d444ecf513b273e4cbadda0776b916a86c.sellPrice() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        sub_ecea385b = ext_call.return_data[0]
        sub_0cf1b83f = ext_call.return_data[0]
        uint8(stor3.field_160) = 1
    else:
        if not uint8(stor3.field_168):
            require ext_code.size(0xb577d7d444ecf513b273e4cbadda0776b916a86c)
            call 0xb577d7d444ecf513b273e4cbadda0776b916a86c.sellPrice() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 100 * ext_call.return_data[0] < arg1 * sub_ecea385b:
                if stor0 != msg.sender:
                    if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
                        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
                require ext_code.size(sub_d141c39bAddress)
                call sub_d141c39bAddress.0xe9fad8ee with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(sub_9d652a8bAddress)
                call sub_9d652a8bAddress.0xe9fad8ee with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor0 != msg.sender:
                    if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
                        require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                uint8(stor3.field_168) = 1
            else:
                if 100 * ext_call.return_data[0] >= sub_0cf1b83f * arg2:
                    if ext_call.return_data[0] > sub_0cf1b83f:
                        sub_0cf1b83f = ext_call.return_data[0]
                else:
                    if stor0 != msg.sender:
                        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
                            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
                    require ext_code.size(sub_d141c39bAddress)
                    call sub_d141c39bAddress.0xe9fad8ee with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(sub_9d652a8bAddress)
                    call sub_9d652a8bAddress.0xe9fad8ee with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if stor0 != msg.sender:
                        if msg.sender != 0x4a4c35280bc7e7f426453db48e5faf66f47398b6:
                            require 0x825d5d0df3b2d59f69cc673f041ca91a296b8183 == msg.sender
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor3.field_168) = 1
}



}
