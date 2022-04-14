contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor5 = 'ITG'
    stor6 = 18
    stor7 = 'ITG'
    require not msg.value
    stor3 = msg.sender
    stor0 = 100000000 * 10^18
    stor1[address(msg.sender)] = stor0
    stor8 = 2
    return code.data[311 len 11468]
}



// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address executorAddress;
uint256 symbol;
uint256 decimals;
uint256 name;
uint8 status;
address stor8; offset 8
address stor9;
address stor10;
mapping of uint256 withdrawRestriction;
uint256 minEtherParticipate;
uint256 minTokParticipate;

function name() {
    return name
}

function totalSupply() {
    return totalSupply
}

function status() {
    require status <= 2
    return status
}

function decimals() {
    return decimals
}

function minTokParticipate() {
    return minTokParticipate
}

function withdrawRestriction(address arg1) {
    return withdrawRestriction[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function minEtherParticipate() {
    return minEtherParticipate
}

function executor() {
    return executorAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setOwner(address arg1) {
    if owner:
        require owner == msg.sender
    owner = arg1
}

function setExecutor(address arg1) {
    if executorAddress:
        if owner != msg.sender:
            require executorAddress == msg.sender
    executorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] - arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
}

function mint(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] + arg1 >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}

function selectWinner(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    require ext_code.size(stor9)
    call stor9.0x4c524be4 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function setAttrs(address arg1, address arg2, address arg3, uint8 arg4, uint256 arg5, uint256 arg6) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    stor8 = arg1
    stor9 = arg2
    stor10 = arg3
    require arg4 <= 2
    status = arg4
    minEtherParticipate = arg5
    minTokParticipate = arg6
}

function distributeTokenSale(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    require ext_code.size(stor9)
    call stor9.0x945c7c59 with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg1), arg2, arg3, arg4
    require ext_call.success
}

function voteInitiate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    require ext_code.size(stor10)
    call stor10.0x72159335 with:
         gas gas_remaining - 710 wei
        args 0, uint32(arg1), arg2, arg3, arg4, arg5, arg6
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require withdrawRestriction[address(msg.sender)] < block.timestamp
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function charityAmtToCharity(address arg1) {
    require msg.sender == owner
    require ext_code.size(stor9)
    call stor9.0xd45294f5 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0] > 0:
        call arg1 with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogFundTransfer(0, address(arg1), ext_call.return_data[0], 1);
}

function lossToCharity(uint256 arg1, address arg2) {
    if owner != msg.sender:
        require msg.sender == executorAddress
    require ext_code.size(stor9)
    call stor9.0xf2141ab9 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if ext_call.return_data[0] > 0:
        call arg2 with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogFundTransfer(0, address(arg2), ext_call.return_data[0], 1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require withdrawRestriction[address(msg.sender)] < block.timestamp
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function USER_GET_CROWDSALE_TOKEN() {
    require ext_code.size(stor8)
    call stor8.0x59770438 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require balanceOf[stor3] - ext_call.return_data[0] <= balanceOf[stor3]
        balanceOf[stor3] -= ext_call.return_data[0]
        require balanceOf[address(msg.sender)] + ext_call.return_data[0] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], owner, msg.sender);
        emit LogFundTransfer(owner, msg.sender, ext_call.return_data[0], 2);
}

function USER_GAME_WITH_TOKEN(uint256 arg1) {
    require status <= 2
    require status == 1
    require balanceOf[address(msg.sender)] >= 10^18 * arg1
    require 10^18 * arg1 >= minTokParticipate
    if 10^18 * arg1 > 0:
        require balanceOf[stor3] + (10^18 * arg1) >= balanceOf[stor3]
        balanceOf[stor3] += 10^18 * arg1
        require balanceOf[address(msg.sender)] - (10^18 * arg1) <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^18 * arg1
        emit Transfer((10^18 * arg1), msg.sender, owner);
        emit LogFundTransfer(address(msg.sender), owner, 10^18 * arg1, 2);
    require ext_code.size(stor9)
    call stor9.0xfc0ea853 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * arg1
    require ext_call.success
}

function USER_VOTE(uint256 arg1, uint256 arg2) {
    require ext_code.size(stor10)
    call stor10.0xfedfe46c with:
         gas gas_remaining - 710 wei
        args 0, uint32(msg.sender), balanceOf[address(msg.sender)], arg1, arg2
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require balanceOf[stor3] - ext_call.return_data[0] <= balanceOf[stor3]
        balanceOf[stor3] -= ext_call.return_data[0]
        require balanceOf[address(msg.sender)] + ext_call.return_data[0] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], owner, msg.sender);
        emit LogFundTransfer(owner, msg.sender, ext_call.return_data[0], 2);
    if withdrawRestriction[address(msg.sender)] < ext_call.return_data[32]:
        withdrawRestriction[address(msg.sender)] = ext_call.return_data[32]
}

function USER_GET_PRIZE() {
    require ext_code.size(stor9)
    call stor9.0x2d5cd1d6 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    if ext_call.return_data[32] > 0:
        require balanceOf[stor3] - ext_call.return_data[32] <= balanceOf[stor3]
        balanceOf[stor3] -= ext_call.return_data[32]
        require balanceOf[address(msg.sender)] + ext_call.return_data[32] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[32]
        emit Transfer(ext_call.return_data[32], owner, msg.sender);
        emit LogFundTransfer(owner, msg.sender, ext_call.return_data[32], 2);
    if ext_call.return_data[0] > 0:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit LogFundTransfer(0, msg.sender, ext_call.return_data[0], 1);
}

function _fallback() payable {
    require msg.value >= minEtherParticipate
    require status <= 2
    if status:
        require status <= 2
        if status != 1:
            require status <= 2
            require status != 2
        else:
            emit LogFundTransfer(address(msg.sender), 0, msg.value, 1);
            require ext_code.size(stor9)
            call stor9.0x7562b0cf with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value
            require ext_call.success
    else:
        emit LogFundTransfer(address(msg.sender), 0, msg.value, 1);
        require ext_code.size(stor8)
        call stor8.0x7562b0cf with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require balanceOf[stor3] - ext_call.return_data[0] <= balanceOf[stor3]
            balanceOf[stor3] -= ext_call.return_data[0]
            require balanceOf[address(msg.sender)] + ext_call.return_data[0] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], owner, msg.sender);
            emit LogFundTransfer(owner, msg.sender, ext_call.return_data[0], 2);
}



}
