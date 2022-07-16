contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 160
address stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function canPause() {
    return bool(uint8(stor0.field_168))
}

function standard() {
    return standard[0 len standard.length]
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_30131cdf(?) {
    require msg.sender == address(stor0.field_0)
    return eth.balance(this.address)
}

function unpause() {
    require msg.sender == address(stor0.field_0)
    require uint8(stor0.field_160)
    require bool(uint8(stor0.field_160)) == 1
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == address(stor0.field_0)
    if uint8(stor0.field_160):
        require msg.sender == address(stor0.field_0)
    require bool(uint8(stor0.field_168)) == 1
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function transferOwner(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor0.field_0)
    balanceOf[address(this.address)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor0.field_0)
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_160):
        require msg.sender == address(stor0.field_0)
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if uint8(stor0.field_160):
        require msg.sender == address(stor0.field_0)
    require balanceOf[address(this.address)] > 0
    if 100 * msg.value / 10^18 <= balanceOf[address(this.address)]:
        require 100 * msg.value / 10^18 > 0
        balanceOf[address(msg.sender)] += 100 * msg.value / 10^18
        balanceOf[address(this.address)] -= 100 * msg.value / 10^18
        emit Transfer((100 * msg.value / 10^18), this.address, msg.sender);
    else:
        call msg.sender with:
           value msg.value - (10^18 * balanceOf[address(this.address)] / 100) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require balanceOf[address(this.address)] > 0
        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
}



}
