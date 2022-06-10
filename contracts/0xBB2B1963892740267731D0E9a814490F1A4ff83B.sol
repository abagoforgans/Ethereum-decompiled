contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint128 stor2; offset 160
address stor2;
mapping of uint256 stor9;
uint8 stor11;

function _fallback() payable {
    stor0 = 0x2cde56e5c8235d6360ccbb0c57ce248ca9c80909
    stor1 = 25 * 10^15
    Mask(96, 0, stor2.field_160) = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    stor9[address(stor2.field_0)] = 25 * 10^11 * 3600
    stor9[address(this.address)] = 16 * 10^15
    stor11 = 0
    emit Transfer(stor9[address(stor2.field_0)], 0, address(stor2.field_0));
    emit Transfer(stor9[address(this.address)], 0, this.address);
    return code.data[809 len 8901]
}



// =====================  Runtime code  =====================


const name = 'PDOne'

const decimals = 8

const symbol = 'P1'


address stor0;
uint256 _totalsupply;
uint8 stor2; offset 160
uint128 stor2; offset 160
address owner;
uint256 startdate;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
address stor8;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stage;

function totalSupply() {
    return _totalsupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function _totalsupply() {
    return _totalsupply
}

function stage() {
    require stage <= 3
    return stage
}

function startdate() {
    return startdate
}

function allowance(address arg1, address arg2) {
    require arg1
    require arg2
    return allowance[address(arg1)][address(arg2)]
}

function set_centralAccount(address arg1) {
    require msg.sender == owner
    stor8 = arg1
}

function end_ICO() {
    require msg.sender == owner
    require stage <= 3
    require stage == 1
    require block.timestamp > stor7
    stage = 3
}

function StopICO() {
    require msg.sender == owner
    require stage <= 3
    require stage == 1
    Mask(96, 0, stor2.field_160) = 1
    stage = 2
}

function releaseICO() {
    require msg.sender == owner
    require stage <= 3
    require stage == 2
    Mask(96, 0, stor2.field_160) = 0
    stage = 1
}

function drain() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require balanceOf[address(arg1)] + balanceOf[address(stor2.field_0)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += balanceOf[address(stor2.field_0)]
    balanceOf[address(stor2.field_0)] = 0
    owner = arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function start_ICO() {
    require msg.sender == owner
    require stage <= 3
    require not stage
    stage = 1
    Mask(96, 0, stor2.field_160) = 0
    startdate = block.timestamp
    stor4 = block.timestamp + (216 * 24 * 3600)
    stor5 = stor4 + (504 * 24 * 3600)
    stor6 = stor5 + (360 * 24 * 3600)
    stor7 = stor6 + (336 * 24 * 3600)
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require arg1 <= balanceOf[address(this.address)]
    require arg1 <= _totalsupply
    _totalsupply -= arg1
    require arg1 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg1
    require balanceOf[0] + arg1 >= balanceOf[0]
    balanceOf[0] += arg1
    emit Transfer(arg1, this.address, 0);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferby(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor8
    require arg2
    require arg1 == this.address
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    if not arg1:
        require _totalsupply + arg3 >= _totalsupply
        _totalsupply += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require stage <= 3
    require stage == 1
    require msg.value >= 10^15
    require not uint8(stor2.field_160)
    require owner != msg.sender
    require ext_code.size(stor0)
    call stor0.USD(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_call.return_data[0]
    require 80 * ext_call.return_data[0] / ext_call.return_data[0] == 80
    require 80 * ext_call.return_data[0] / 100 * 10^6
    if block.timestamp >= stor4:
        if block.timestamp >= stor5:
            if block.timestamp >= stor6:
                if block.timestamp >= stor7:
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                    require ext_call.success
                else:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 < 2 * 10^11:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 <= 1999900 * 10^6:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                require ext_call.success
                            else:
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require ext_call.success
                        else:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                    require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                    require ext_call.success
                                else:
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require ext_call.success
                            else:
                                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                    require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                    require ext_call.success
                                else:
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require ext_call.success
                    else:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 1999900 * 10^6:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                    require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                    require ext_call.success
                                else:
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require ext_call.success
                            else:
                                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                    require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                    require ext_call.success
                                else:
                                    require ext_code.size(this.address)
                                    call this.address.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                    require ext_call.success
                        else:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                require ext_call.success
                            else:
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require ext_call.success
            else:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 < 2 * 10^11:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 <= 1999900 * 10^6:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                            require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                            require ext_call.success
                        else:
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require ext_call.success
                    else:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                require ext_call.success
                            else:
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require ext_call.success
                        else:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                require ext_call.success
                            else:
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require ext_call.success
                else:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 1999900 * 10^6:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                require ext_call.success
                            else:
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require ext_call.success
                        else:
                            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                                require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                                require ext_call.success
                            else:
                                require ext_code.size(this.address)
                                call this.address.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                                require ext_call.success
                    else:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                            require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require 20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 20
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (20 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                            require ext_call.success
                        else:
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require ext_call.success
        else:
            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 < 2 * 10^11:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 <= 1999900 * 10^6:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                        require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require 25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 25
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                        require ext_call.success
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require ext_call.success
                else:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                            require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require 25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 25
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                            require ext_call.success
                        else:
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require ext_call.success
                    else:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                            require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require 25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 25
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                            require ext_call.success
                        else:
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require ext_call.success
            else:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 1999900 * 10^6:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                            require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require 25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 25
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                            require ext_call.success
                        else:
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require ext_call.success
                    else:
                        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                            require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require 25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 25
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                            require ext_call.success
                        else:
                            require ext_code.size(this.address)
                            call this.address.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                            require ext_call.success
                else:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                        require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require 25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 25
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (25 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                        require ext_call.success
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require ext_call.success
    else:
        if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 < 2 * 10^11:
            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 <= 1999900 * 10^6:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                    require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                    require 30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 30
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                    require ext_call.success
                else:
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                    require ext_call.success
            else:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                        require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require 30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 30
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                        require ext_call.success
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require ext_call.success
                else:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                        require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require 30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 30
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                        require ext_call.success
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require ext_call.success
        else:
            if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 1999900 * 10^6:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 > 14999900 * 10^6:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                        require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require 30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 30
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                        require ext_call.success
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require ext_call.success
                else:
                    if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                        require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require 30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 30
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                        require ext_call.success
                    else:
                        require ext_code.size(this.address)
                        call this.address.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                        require ext_call.success
            else:
                if msg.value / 80 * ext_call.return_data[0] / 100 * 10^6:
                    require msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                    require 30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 == 30
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (msg.value / 80 * ext_call.return_data[0] / 100 * 10^6) + (30 * msg.value / 80 * ext_call.return_data[0] / 100 * 10^6 / 100)
                    require ext_call.success
                else:
                    require ext_code.size(this.address)
                    call this.address.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / 80 * ext_call.return_data[0] / 100 * 10^6
                    require ext_call.success
}



}
