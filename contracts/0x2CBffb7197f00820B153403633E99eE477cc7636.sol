contract main {


// =======================  Init code  ======================


uint256 stor7;
uint256 stor8;
uint8 stor9;
address stor9; offset 8
address stor10;
address stor11;

function _fallback() payable {
    uint8(stor9.field_0) = 1
    require not msg.value
    require code.data[6843 len 20]
    require code.data[6895 len 32] > code.data[6863 len 32]
    call code.data[6843 len 20] with:
         gas 2300 wei
    require ext_call.success
    create contract with 0 wei
                    code: code.data[6046 len 785]
    require create.new_address
    stor10 = address(create.new_address)
    address(stor9.field_8) = code.data[6843 len 20]
    stor7 = block.timestamp + code.data[6863 len 32]
    stor8 = code.data[6895 len 32] + block.timestamp
    stor11 = msg.sender
    return code.data[300 len 5746]
}



// =====================  Runtime code  =====================


const name = 'DeDeCoin'

const sub_17845d2a(?) = (125 * 10^11 * 3600)

const tokenCreationMax = 10000000000 * 10^18

const decimals = 18

const tokenExchangeRate = 10^10

const sub_42285a83(?) = 555 * 10^15

const symbol = 'DEDE'

const sub_cb7fb050(?) = (250000 * 10^18 * 3600)

const sub_d29a5b04(?) = 2 * 10^16

const sub_e6d106cf(?) = 6000000000 * 10^18

const sub_e8b6af09(?) = 2 * 10^10

const sub_fb0586f0(?) = 10^16


uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint256 sub_3876ed9f;
mapping of uint256 etherBalanceOf;
mapping of uint8 stor5;
uint256 sub_65024a89;
uint256 sub_a7a0a7e6;
uint256 sub_b2ff43d3;
uint8 stor9;
address sub_c2fc74b4Address; offset 8
address sub_6170fb47Address;
address myAddress;
uint256 stor2880;
uint256 storDDEC;

function etherBalanceOf(address arg1) {
    return etherBalanceOf[address(arg1)]
}

function sub_180bfde5(?) {
    return sub_65024a89
}

function totalSupply() {
    return _totalSupply
}

function myAddress() {
    return myAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_3876ed9f(?) {
    return sub_3876ed9f[address(arg1)]
}

function _totalSupply() {
    return _totalSupply
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_6170fb47(?) {
    return sub_6170fb47Address
}

function sub_65024a89(?) {
    return sub_65024a89
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function etherBalances(address arg1) {
    return etherBalanceOf[arg1]
}

function sub_a7a0a7e6(?) {
    return sub_a7a0a7e6
}

function sub_b2ff43d3(?) {
    return sub_b2ff43d3
}

function sub_bc5102eb(?) {
    return bool(uint8(stor9.field_0))
}

function sub_c2fc74b4(?) {
    return sub_c2fc74b4Address
}

function claimed(address arg1) {
    return bool(stor5[arg1])
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function sub_ff057f20(?) {
    return sub_3876ed9f[arg1]
}

function sub_097c1e25(?) {
    require myAddress == msg.sender
    selfdestruct(myAddress)
}

function sub_c0455210(?) {
    balances[address(msg.sender)] += arg1
    _totalSupply += arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 < 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function donate() payable {
    require uint8(stor9.field_0)
    require block.timestamp >= sub_a7a0a7e6
    require block.timestamp <= sub_b2ff43d3
    require msg.value >= 10^16
    if sub_65024a89 + msg.value <= 125 * 10^11 * 3600:
        require msg.value <= 2 * 10^16
        sub_3876ed9f[address(msg.sender)] += msg.value
        emit 0xe1e8c5e0: msg.value, block.timestamp, msg.sender
    else:
        if sub_65024a89 >= 125 * 10^11 * 3600:
            etherBalanceOf[address(msg.sender)] += msg.value
            emit Donation(msg.value, block.timestamp, msg.sender);
        else:
            require -sub_65024a89 + (125 * 10^11 * 3600) <= 2 * 10^16
            sub_3876ed9f[address(msg.sender)] = -sub_65024a89 + sub_3876ed9f[address(msg.sender)] + (125 * 10^11 * 3600)
            emit 0xe1e8c5e0: -sub_65024a89 + (125 * 10^11 * 3600), block.timestamp, msg.sender
            etherBalanceOf[address(msg.sender)] = etherBalanceOf[address(msg.sender)] + sub_65024a89 + msg.value - (125 * 10^11 * 3600)
            emit Donation(sub_65024a89 + msg.value - (125 * 10^11 * 3600), block.timestamp, msg.sender);
    sub_65024a89 += msg.value
}

function claim() {
    require not uint8(stor9.field_0)
    require not stor5[address(msg.sender)]
    if etherBalanceOf[address(msg.sender)]:
        if sub_65024a89 < 555 * 10^15:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^10 * etherBalanceOf[address(msg.sender)]
        else:
            require sub_65024a89 - (125 * 10^11 * 3600)
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 5100000000 * 10^18 * etherBalanceOf[address(msg.sender)] / sub_65024a89 - (125 * 10^11 * 3600)
        require ext_call.success
    if sub_3876ed9f[address(msg.sender)]:
        if sub_65024a89 >= 125 * 10^11 * 3600:
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2 * 10^10 * sub_3876ed9f[address(msg.sender)]
        else:
            require sub_65024a89
            require ext_code.size(this.address)
            call this.address.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 250000 * 10^18 * 3600 * sub_3876ed9f[address(msg.sender)] / sub_65024a89
        require ext_call.success
    stor5[address(msg.sender)] = 1
}

function finalize() {
    require uint8(stor9.field_0)
    require block.timestamp > sub_b2ff43d3
    call sub_c2fc74b4Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint8(stor9.field_0) = 0
    if sub_65024a89 < 125 * 10^11 * 3600:
        balances[stor10] = 3000000000 * 10^18
        balances[this.address] = 250000 * 10^18 * 3600
        balances[address(stor9.field_8)] = 6000000000 * 10^18
        emit Transfer(3000000000 * 10^18, 0, sub_6170fb47Address);
        emit Transfer((250000 * 10^18 * 3600), 0, this.address);
        emit Transfer(6000000000 * 10^18, 0, sub_c2fc74b4Address);
    else:
        if sub_65024a89 >= 555 * 10^15:
            balances[stor10] = 1300000000 * 10^18
            balances[this.address] = 6000000000 * 10^18
            balances[address(stor9.field_8)] = 2600000000 * 10^18
            emit Transfer(1300000000 * 10^18, 0, sub_6170fb47Address);
            emit Transfer(6000000000 * 10^18, 0, this.address);
            emit Transfer(2600000000 * 10^18, 0, sub_c2fc74b4Address);
        else:
            balances[stor10] = (-1 * 10^10 * sub_65024a89) + (2625000 * 10^18 * 24 * 3600) / 3
            balances[this.address] = (10^10 * sub_65024a89) + (125000 * 10^18 * 3600)
            balances[address(stor9.field_8)] = (-1 * 10^10 * sub_65024a89) + -((-1 * 10^10 * sub_65024a89) + (2625000 * 10^18 * 24 * 3600) / 3) + (2625000 * 10^18 * 24 * 3600)
            emit Transfer(((-1 * 10^10 * sub_65024a89) + (2625000 * 10^18 * 24 * 3600) / 3), 0, sub_6170fb47Address);
            emit Transfer(((10^10 * sub_65024a89) + (125000 * 10^18 * 3600)), 0, this.address);
            emit Transfer(((-1 * 10^10 * sub_65024a89) + -((-1 * 10^10 * sub_65024a89) + (2625000 * 10^18 * 24 * 3600) / 3) + (2625000 * 10^18 * 24 * 3600)), 0, sub_c2fc74b4Address);
    storDDEC = 50000000 * 10^18
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  50000000 * 10^18,
    emit 0x0: 50000000 * 10^18
    emit 0x99e82dd4: 50000000 * 10^18
    stor2880 = 50000000 * 10^18
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  50000000 * 10^18,
    emit 0x0: 50000000 * 10^18
    emit 0x5750dedc: 50000000 * 10^18
    _totalSupply = 10000000000 * 10^18
}

function _fallback() payable {
    if uint8(stor9.field_0):
        require uint8(stor9.field_0)
        require block.timestamp >= sub_a7a0a7e6
        require block.timestamp <= sub_b2ff43d3
        require msg.value >= 10^16
        if sub_65024a89 + msg.value <= 125 * 10^11 * 3600:
            require msg.value <= 2 * 10^16
            sub_3876ed9f[address(msg.sender)] += msg.value
            emit 0xe1e8c5e0: msg.value, block.timestamp, msg.sender
        else:
            if sub_65024a89 >= 125 * 10^11 * 3600:
                etherBalanceOf[address(msg.sender)] += msg.value
                emit Donation(msg.value, block.timestamp, msg.sender);
            else:
                require -sub_65024a89 + (125 * 10^11 * 3600) <= 2 * 10^16
                sub_3876ed9f[address(msg.sender)] = -sub_65024a89 + sub_3876ed9f[address(msg.sender)] + (125 * 10^11 * 3600)
                emit 0xe1e8c5e0: -sub_65024a89 + (125 * 10^11 * 3600), block.timestamp, msg.sender
                etherBalanceOf[address(msg.sender)] = etherBalanceOf[address(msg.sender)] + sub_65024a89 + msg.value - (125 * 10^11 * 3600)
                emit Donation(sub_65024a89 + msg.value - (125 * 10^11 * 3600), block.timestamp, msg.sender);
        sub_65024a89 += msg.value
    else:
        require not msg.value
        require not uint8(stor9.field_0)
        require not stor5[address(msg.sender)]
        if etherBalanceOf[address(msg.sender)]:
            if sub_65024a89 < 555 * 10^15:
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^10 * etherBalanceOf[address(msg.sender)]
            else:
                require sub_65024a89 - (125 * 10^11 * 3600)
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 5100000000 * 10^18 * etherBalanceOf[address(msg.sender)] / sub_65024a89 - (125 * 10^11 * 3600)
            require ext_call.success
        if sub_3876ed9f[address(msg.sender)]:
            if sub_65024a89 >= 125 * 10^11 * 3600:
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2 * 10^10 * sub_3876ed9f[address(msg.sender)]
            else:
                require sub_65024a89
                require ext_code.size(this.address)
                call this.address.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 250000 * 10^18 * 3600 * sub_3876ed9f[address(msg.sender)] / sub_65024a89
            require ext_call.success
        stor5[address(msg.sender)] = 1
}



}
