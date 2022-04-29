contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor5;
uint128 stor6; offset 160
uint128 stor7; offset 168
uint128 stor7; offset 160
uint256 stor8;

function _fallback() payable {
    stor5 = 400 * 10^6
    stor6 = 0
    Mask(96, 0, stor7.field_160) = 0
    Mask(88, 0, stor7.field_168) = 0
    stor8 = 0
    require not msg.value
    stor3 = msg.sender
    stor0 = 500000000 * 10^18
    stor1[address(msg.sender)] = stor0
    emit Transfer(stor0, 0, msg.sender);
    require msg.sender == stor3
    if msg.sender:
        stor3 = msg.sender
    return code.data[631 len 7412]
}



// =====================  Runtime code  =====================


const name = 'GPower'

const decimals = 18

const symbol = 'GRP'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 stor4;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
uint8 stor7; offset 160
uint8 stor7; offset 168
uint128 stor7; offset 168
uint128 stor7; offset 160
address walletAddress;
uint256 stor8;

function totalSupply() {
    return totalSupply
}

function transferEnabled() {
    return bool(uint8(stor7.field_160))
}

function wallet() {
    return walletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function stopSale() {
    return bool(uint8(stor7.field_168))
}

function enableIco() {
    return bool(uint8(stor6.field_160))
}

function setCourceSale(uint256 arg1) {
    require msg.sender == owner
    stor8 = arg1
}

function setParamsTotalSupply(uint256 arg1) {
    require msg.sender == owner
    totalSupply = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setParamsStopSale(bool arg1) {
    require msg.sender == owner
    Mask(88, 0, stor7.field_168) = Mask(88, 0, arg1)
}

function setParamsTransfer(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg1)
}

function setParamsIco(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
    return 1
}

function startIco(uint256 arg1) {
    require msg.sender == owner
    Mask(88, 0, stor7.field_168) = 0
    stor4 = arg1
    Mask(96, 0, stor6.field_160) = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function emergencyERC20Drain(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
}

function burn(uint256 arg1) {
    if not uint8(stor7.field_160):
        require not uint8(stor7.field_160)
        require msg.sender == owner
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor7.field_160):
        require not uint8(stor7.field_160)
        require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor7.field_160):
        require not uint8(stor7.field_160)
        require msg.sender == owner
    require arg2
    require arg2 != this.address
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if not uint8(stor7.field_160):
        require not uint8(stor7.field_160)
        require msg.sender == owner
    if not uint8(stor7.field_160):
        require not uint8(stor7.field_160)
        require msg.sender == owner
    require msg.sender
    require this.address != msg.sender
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(msg.sender)] + arg2 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Transfer(arg2, arg1, msg.sender);
    if not uint8(stor7.field_160):
        require not uint8(stor7.field_160)
        require msg.sender == owner
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    emit Transfer(arg2, msg.sender, 0);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require msg.sender
    walletAddress = owner
    if uint8(stor7.field_168):
        call walletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        walletAddress = owner
        walletAddress = address(stor6.field_0)
        if stor4 + (168 * 24 * 3600) < block.timestamp:
            if stor4 + (336 * 24 * 3600) < block.timestamp:
                if stor4 + (504 * 24 * 3600) < block.timestamp:
                    if stor4 + (672 * 24 * 3600) < block.timestamp:
                        if stor4 + (840 * 24 * 3600) < block.timestamp:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                        else:
                            call walletAddress with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                    else:
                        call walletAddress with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                else:
                    call walletAddress with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                call walletAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        else:
            call walletAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}



}
