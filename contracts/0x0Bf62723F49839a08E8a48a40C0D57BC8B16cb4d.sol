contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
uint256 stor1;
address stor2;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    create contract with 0 wei
                    code: code.data[3003 len 376]
    require create.new_address
    address(stor0.field_8) = address(create.new_address)
    stor1 = 0
    require not msg.value
    stor2 = msg.sender
    return code.data[162 len 2841]
}



// =====================  Runtime code  =====================


const name = 'Just Another Ethereum Token'

const rate = 1000

const decimal = 18

const symbol = 'JAET'


uint8 stor0;
address sub_0fe532bcAddress; offset 8
uint256 _totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_0fe532bc(?) {
    return sub_0fe532bcAddress
}

function totalSupply() {
    return _totalSupply
}

function _totalSupply() {
    return _totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function purchasingAllowed() {
    return bool(stor0)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require owner == msg.sender
    stor0 = 1
}

function disablePurchasing() {
    require owner == msg.sender
    stor0 = 0
}

function approve(address arg1, uint256 arg2) {
    require arg2
    require allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require ext_code.size(sub_0fe532bcAddress)
    call sub_0fe532bcAddress.randomGen(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args msg.value
    require ext_call.success
    if ext_call.return_data[0] != 777:
        require (1000 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 1000 * msg.value / 10^18
        require (1000 * msg.value / 10^18) + _totalSupply >= _totalSupply
        _totalSupply += 1000 * msg.value / 10^18
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((1000 * msg.value / 10^18), this.address, msg.sender);
    else:
        require (1000 * msg.value / 10^18) + 10000 >= 1000 * msg.value / 10^18
        require (1000 * msg.value / 10^18) + balanceOf[address(msg.sender)] + 10000 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (1000 * msg.value / 10^18) + balanceOf[address(msg.sender)] + 10000
        require (1000 * msg.value / 10^18) + _totalSupply + 10000 >= _totalSupply
        _totalSupply = (1000 * msg.value / 10^18) + _totalSupply + 10000
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(((1000 * msg.value / 10^18) + 10000), this.address, msg.sender);
}

function createTokens() payable {
    require msg.value > 0
    if msg.value:
        require msg.value
        require 1000 * msg.value / msg.value == 1000
    require ext_code.size(sub_0fe532bcAddress)
    call sub_0fe532bcAddress.randomGen(uint256 rg1) with:
         gas gas_remaining - 710 wei
        args msg.value
    require ext_call.success
    if ext_call.return_data[0] != 777:
        require (1000 * msg.value / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += 1000 * msg.value / 10^18
        require (1000 * msg.value / 10^18) + _totalSupply >= _totalSupply
        _totalSupply += 1000 * msg.value / 10^18
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((1000 * msg.value / 10^18), this.address, msg.sender);
    else:
        require (1000 * msg.value / 10^18) + 10000 >= 1000 * msg.value / 10^18
        require (1000 * msg.value / 10^18) + balanceOf[address(msg.sender)] + 10000 >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = (1000 * msg.value / 10^18) + balanceOf[address(msg.sender)] + 10000
        require (1000 * msg.value / 10^18) + _totalSupply + 10000 >= _totalSupply
        _totalSupply = (1000 * msg.value / 10^18) + _totalSupply + 10000
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(((1000 * msg.value / 10^18) + 10000), this.address, msg.sender);
}



}
