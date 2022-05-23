contract main {




// =====================  Runtime code  =====================


const name = 'Rubus Fund Black Token'

const decimals = 18

const symbol = 'RTB'


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint256 balanceOf;
uint256 totalSupply;
address rubusBlackAddress;
uint256 priceEthPerToken;
uint256 depositCommission;
uint256 withdrawCommission;
uint256 investCommission;
address depositWalletAddress;
address withdrawWalletAddress;
uint8 stor10; offset 160
uint128 stor10; offset 160
address investWalletAddress;
mapping of uint256 allowance;

function depositWallet() {
    return depositWalletAddress
}

function totalSupply() {
    return totalSupply
}

function withdrawCommission() {
    return withdrawCommission
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function rubusBlackAddress() {
    return rubusBlackAddress
}

function withdrawWallet() {
    return withdrawWalletAddress
}

function investCommission() {
    return investCommission
}

function owner() {
    return owner
}

function depositCommission() {
    return depositCommission
}

function priceEthPerToken() {
    return priceEthPerToken
}

function investWallet() {
    return investWalletAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function lock() {
    return bool(uint8(stor10.field_160))
}

function addEther() payable {
    if owner != msg.sender:
        require msg.sender == this.address
    emit AddWei(msg.value);
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setNewPrice(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    priceEthPerToken = arg1
    emit NewTokenPrice(priceEthPerToken);
}

function newInvestWallet(address arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    investWalletAddress = arg1
    emit InvestWallet(investWalletAddress);
}

function newInvestCommission(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    investCommission = arg1
    emit InvestCommission(investCommission);
}

function newDepositWallet(address arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    depositWalletAddress = arg1
    emit DepositWallet(depositWalletAddress);
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function newDepositCommission(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    depositCommission = arg1
    emit DepositCommission(depositCommission);
}

function newWithdraWallet(address arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    withdrawWalletAddress = arg1
    emit WithdrawWallet(withdrawWalletAddress);
}

function newWithdrawCommission(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    withdrawCommission = arg1
    emit WithdrawCommission(withdrawCommission);
}

function lockUp(bool arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    Mask(96, 0, stor10.field_160) = Mask(96, 0, arg1)
    emit Lock(bool(uint8(stor10.field_160)));
}

function unpause() {
    if owner != msg.sender:
        require msg.sender == this.address
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Pause(bool(uint8(stor0.field_160)));
}

function pause() {
    if owner != msg.sender:
        require msg.sender == this.address
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause(bool(uint8(stor0.field_160)));
}

function getWei(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == this.address
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit GetWei(arg1);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function airdrop(address[] arg1, uint256[] arg2) {
    if owner != msg.sender:
        require msg.sender == this.address
    require arg1.length > 0
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require totalSupply + cd[((32 * idx) + arg2 + 36)] >= totalSupply
        totalSupply += cd[((32 * idx) + arg2 + 36)]
        require idx < arg1.length
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] + cd[((32 * idx) + arg2 + 36)] >= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] += cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], this.address, address(cd[((32 * idx) + arg1 + 36)]));
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = cd[((32 * idx) + arg2 + 36)]
        emit AddTokens(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]);
        s = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}

function deleteInvestorTokens(address[] arg1, uint256[] arg2) {
    if owner != msg.sender:
        require msg.sender == this.address
    require arg1.length > 0
    require arg1.length == arg2.length
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require cd[((32 * idx) + arg2 + 36)] <= totalSupply
        totalSupply -= cd[((32 * idx) + arg2 + 36)]
        require idx < arg1.length
        require cd[((32 * idx) + arg2 + 36)] <= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require idx < arg1.length
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 1
        balanceOf[address(cd[((32 * idx) + arg1 + 36)])] -= cd[((32 * idx) + arg2 + 36)]
        emit Transfer(cd[((32 * idx) + arg2 + 36)], address(cd[((32 * idx) + arg1 + 36)]), this.address);
        mem[96] = address(cd[((32 * idx) + arg1 + 36)])
        mem[128] = cd[((32 * idx) + arg2 + 36)]
        emit DeleteTokens(address(cd[((32 * idx) + arg1 + 36)]), cd[((32 * idx) + arg2 + 36)]);
        s = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor0.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if arg1 != rubusBlackAddress:
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
    else:
        require not uint8(stor10.field_160)
        if not arg2:
            require priceEthPerToken
            require 0 / priceEthPerToken <= eth.balance(this.address)
            require arg2 <= totalSupply
            totalSupply -= arg2
            call msg.sender with:
               value 0 / priceEthPerToken wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require withdrawCommission <= 100
            if not 0 / priceEthPerToken:
                call withdrawWalletAddress with:
                     gas 2300 wei
            else:
                require 0 / priceEthPerToken
                require (100 * 0 / priceEthPerToken) - (withdrawCommission * 0 / priceEthPerToken) / 0 / priceEthPerToken == -withdrawCommission + 100
                call withdrawWalletAddress with:
                   value (100 * 0 / priceEthPerToken) - (withdrawCommission * 0 / priceEthPerToken) / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(0 / priceEthPerToken, arg2, priceEthPerToken, withdrawCommission, msg.sender);
        else:
            require arg2
            require arg2 * withdrawCommission / arg2 == withdrawCommission
            require priceEthPerToken
            require arg2 * withdrawCommission / priceEthPerToken <= eth.balance(this.address)
            require arg2 <= totalSupply
            totalSupply -= arg2
            call msg.sender with:
               value arg2 * withdrawCommission / priceEthPerToken wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require withdrawCommission <= 100
            if not arg2 * withdrawCommission / priceEthPerToken:
                call withdrawWalletAddress with:
                     gas 2300 wei
            else:
                require arg2 * withdrawCommission / priceEthPerToken
                require (100 * arg2 * withdrawCommission / priceEthPerToken) - (withdrawCommission * arg2 * withdrawCommission / priceEthPerToken) / arg2 * withdrawCommission / priceEthPerToken == -withdrawCommission + 100
                call withdrawWalletAddress with:
                   value (100 * arg2 * withdrawCommission / priceEthPerToken) - (withdrawCommission * arg2 * withdrawCommission / priceEthPerToken) / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(arg2 * withdrawCommission / priceEthPerToken, arg2, priceEthPerToken, withdrawCommission, msg.sender);
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor0.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if arg2 != rubusBlackAddress:
        require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
        balanceOf[address(arg2)] += arg3
    else:
        require not uint8(stor10.field_160)
        if not arg3:
            require priceEthPerToken
            require 0 / priceEthPerToken <= eth.balance(this.address)
            require arg3 <= totalSupply
            totalSupply -= arg3
            call msg.sender with:
               value 0 / priceEthPerToken wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require withdrawCommission <= 100
            if not 0 / priceEthPerToken:
                call withdrawWalletAddress with:
                     gas 2300 wei
            else:
                require 0 / priceEthPerToken
                require (100 * 0 / priceEthPerToken) - (withdrawCommission * 0 / priceEthPerToken) / 0 / priceEthPerToken == -withdrawCommission + 100
                call withdrawWalletAddress with:
                   value (100 * 0 / priceEthPerToken) - (withdrawCommission * 0 / priceEthPerToken) / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(0 / priceEthPerToken, arg3, priceEthPerToken, withdrawCommission, msg.sender);
        else:
            require arg3
            require arg3 * withdrawCommission / arg3 == withdrawCommission
            require priceEthPerToken
            require arg3 * withdrawCommission / priceEthPerToken <= eth.balance(this.address)
            require arg3 <= totalSupply
            totalSupply -= arg3
            call msg.sender with:
               value arg3 * withdrawCommission / priceEthPerToken wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require withdrawCommission <= 100
            if not arg3 * withdrawCommission / priceEthPerToken:
                call withdrawWalletAddress with:
                     gas 2300 wei
            else:
                require arg3 * withdrawCommission / priceEthPerToken
                require (100 * arg3 * withdrawCommission / priceEthPerToken) - (withdrawCommission * arg3 * withdrawCommission / priceEthPerToken) / arg3 * withdrawCommission / priceEthPerToken == -withdrawCommission + 100
                call withdrawWalletAddress with:
                   value (100 * arg3 * withdrawCommission / priceEthPerToken) - (withdrawCommission * arg3 * withdrawCommission / priceEthPerToken) / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Withdraw(arg3 * withdrawCommission / priceEthPerToken, arg3, priceEthPerToken, withdrawCommission, msg.sender);
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    if not msg.value:
        require totalSupply >= totalSupply
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        if not msg.value:
            call investWalletAddress with:
                 gas 2300 wei
        else:
            require msg.value
            require msg.value * investCommission / msg.value == investCommission
            call investWalletAddress with:
               value msg.value * investCommission / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require depositCommission <= 100
        if not msg.value:
            call depositWalletAddress with:
                 gas 2300 wei
        else:
            require msg.value
            require (100 * msg.value) - (depositCommission * msg.value) / msg.value == -depositCommission + 100
            call depositWalletAddress with:
               value (100 * msg.value) - (depositCommission * msg.value) / 100 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit Transfer(0, rubusBlackAddress, msg.sender);
        emit Deposit(msg.value, 0, priceEthPerToken, depositCommission, msg.sender);
    else:
        require msg.value
        require msg.value * depositCommission / msg.value == depositCommission
        if not msg.value * depositCommission:
            require totalSupply >= totalSupply
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            if not msg.value:
                call investWalletAddress with:
                     gas 2300 wei
            else:
                require msg.value
                require msg.value * investCommission / msg.value == investCommission
                call investWalletAddress with:
                   value msg.value * investCommission / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require depositCommission <= 100
            if not msg.value:
                call depositWalletAddress with:
                     gas 2300 wei
            else:
                require msg.value
                require (100 * msg.value) - (depositCommission * msg.value) / msg.value == -depositCommission + 100
                call depositWalletAddress with:
                   value (100 * msg.value) - (depositCommission * msg.value) / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer(0, rubusBlackAddress, msg.sender);
            emit Deposit(msg.value, 0, priceEthPerToken, depositCommission, msg.sender);
        else:
            require msg.value * depositCommission
            require msg.value * depositCommission * priceEthPerToken / msg.value * depositCommission == priceEthPerToken
            require totalSupply + (msg.value * depositCommission * priceEthPerToken / 10000) >= totalSupply
            totalSupply += msg.value * depositCommission * priceEthPerToken / 10000
            require balanceOf[address(msg.sender)] + (msg.value * depositCommission * priceEthPerToken / 10000) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * depositCommission * priceEthPerToken / 10000
            if not msg.value:
                call investWalletAddress with:
                     gas 2300 wei
            else:
                require msg.value
                require msg.value * investCommission / msg.value == investCommission
                call investWalletAddress with:
                   value msg.value * investCommission / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require depositCommission <= 100
            if not msg.value:
                call depositWalletAddress with:
                     gas 2300 wei
            else:
                require msg.value
                require (100 * msg.value) - (depositCommission * msg.value) / msg.value == -depositCommission + 100
                call depositWalletAddress with:
                   value (100 * msg.value) - (depositCommission * msg.value) / 100 wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit Transfer((msg.value * depositCommission * priceEthPerToken / 10000), rubusBlackAddress, msg.sender);
            emit Deposit(msg.value, msg.value * depositCommission * priceEthPerToken / 10000, priceEthPerToken, depositCommission, msg.sender);
}



}
