contract main {




// =====================  Runtime code  =====================


#
#  - takeBuyOrder(address[3] arg1, uint256[3] arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const ETH = 0

const VERSION = 0


address owner;
uint256 feeRate;
mapping of uint256 balances;
mapping of uint256 filledAmounts;
address feeAccount;
uint256 dailyVolume;
uint256 dailyVolumeCap;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10; offset 160
address discountTokenAddress;
uint256 referralFeeRate;
mapping of address referrals;
uint8 stor13; offset 160
uint128 stor13; offset 160
address newExchangeAddress;
mapping of struct crowdsales;
mapping of uint256 userContributionForProject;
mapping of uint8 stor16;
mapping of uint256 stor99;

function isMigrationAllowed() {
    return bool(uint8(stor13.field_160))
}

function filledAmounts(bytes32 arg1) {
    return filledAmounts[arg1]
}

function feeAccount() {
    return feeAccount
}

function userContributionForProject(address arg1, address arg2) {
    return userContributionForProject[arg1][arg2]
}

function owner() {
    return owner
}

function feeRate() {
    return feeRate
}

function dailyVolume() {
    return dailyVolume
}

function referrals(address arg1) {
    return referrals[arg1]
}

function newExchangeAddress() {
    return newExchangeAddress
}

function dailyVolumeCap() {
    return dailyVolumeCap
}

function referralFeeRate() {
    return referralFeeRate
}

function balances(address arg1, address arg2) {
    return balances[arg1][arg2]
}

function crowdsales(address arg1) {
    return crowdsales[arg1].field_0, 
           crowdsales[arg1].field_256,
           crowdsales[arg1].field_512,
           crowdsales[arg1].field_768,
           crowdsales[arg1].field_1024,
           crowdsales[arg1].field_1280,
           crowdsales[arg1].field_1536,
           crowdsales[arg1].field_1792,
           address(crowdsales[arg1].field_2048)
}

function discountTokenAddress() {
    return discountTokenAddress
}

function _fallback() payable {
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'Cannot send Ethers to the contract, use depositEthers'
}

function depositEthersFor(address arg1) payable {
    require msg.value + balances[0][arg1] >= balances[0][arg1]
    balances[0][arg1] += msg.value
    emit Deposit(msg.value, balances[0][arg1], 0, arg1);
}

function depositEthers() payable {
    require msg.value + balances[0][msg.sender] >= balances[0][msg.sender]
    balances[0][msg.sender] += msg.value
    emit Deposit(msg.value, balances[0][msg.sender], 0, msg.sender);
}

function saleOpen(address arg1) {
    if block.timestamp < crowdsales[address(arg1)].field_0:
        return block.timestamp >= crowdsales[address(arg1)].field_0
    return block.timestamp <= crowdsales[address(arg1)].field_256
}

function setFee(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    feeRate = arg1
}

function setFeeAccount(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    feeAccount = arg1
}

function setReferralFee(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    referralFeeRate = arg1
}

function setDailyVolumeCap(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    dailyVolumeCap = arg1
}

function setMinimumTokenAmountForUpdate(uint256 arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    stor9 = arg1
}

function setNewExchangeAddress(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    newExchangeAddress = arg1
}

function allowOrRestrictMethod(bytes4 arg1, bool arg2) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    stor16[Mask(32, 224, arg1)] = uint8(arg2)
}

function allowOrRestrictMigrations() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    Mask(96, 0, stor13.field_160) = Mask(96, 0, not uint8(stor13.field_160))
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    if not arg1:
        revert with 0, 'Invalid address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isUserWhitelisted(address arg1, address arg2) {
    require ext_code.size(arg1)
    call arg1.isUserWhitelisted(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function depositEthers(address arg1) payable {
    if referrals[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This user already have a referrer.'
    require msg.value + balances[0][msg.sender] >= balances[0][msg.sender]
    balances[0][msg.sender] += msg.value
    referrals[address(msg.sender)] = arg1
    emit ReferralDeposit(0, msg.value, balances[0][msg.sender], msg.sender, arg1);
}

function getBonusFactor(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.getBonusFactor(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args crowdsales[address(arg1)].field_0, crowdsales[address(arg1)].field_256, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setDiscountToken(address arg1, uint256 arg2, uint256 arg3) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    '{Only the owner of that contractcan execute this method'
    if uint8(stor10.field_160):
        revert with 0, 'Exchange is already initialized'
    stor8 = arg2
    stor9 = arg3
    discountTokenAddress = arg1
    uint8(stor10.field_160) = 1
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if arg3 > balances[address(arg1)][msg.sender]:
        revert with 0, 'Not enough funds to transfer.'
    require arg3 <= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] -= arg3
    require arg3 + balances[address(arg1)][arg2] >= balances[address(arg1)][arg2]
    balances[address(arg1)][address(arg2)] = arg3 + balances[address(arg1)][arg2]
}

function withdrawEthers(uint256 arg1) {
    if arg1 > balances[0][msg.sender]:
        revert with 0, 'Not enough funds to withdraw.'
    require arg1 <= balances[0][msg.sender]
    balances[0][msg.sender] -= arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(arg1, balances[0][msg.sender], 0, msg.sender);
}

function depositOldTokensFor(address arg1, uint256 arg2, address arg3) {
    require arg2 + balances[address(arg1)][address(arg3)] >= balances[address(arg1)][address(arg3)]
    balances[address(arg1)][address(arg3)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'Transfer From failed'
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer From failed'
    emit Deposit(arg2, balances[address(arg1)][address(arg3)], arg1, arg3);
}

function depositOldTokens(address arg1, uint256 arg2) {
    require arg2 + balances[address(arg1)][address(msg.sender)] >= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'Transfer From failed'
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer From failed'
    emit Deposit(arg2, balances[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function withdrawOldTokens(address arg1, uint256 arg2) {
    if arg2 > balances[address(arg1)][msg.sender]:
        revert with 0, 'Not enough funds to withdraw.'
    require arg2 <= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'Transfer failed'
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
    emit Withdraw(arg2, balances[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function withdrawTokens(address arg1, uint256 arg2) {
    if arg2 > balances[address(arg1)][msg.sender]:
        revert with 0, 'Not enough funds to withdraw.'
    require arg2 <= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Token transfer is not successfull.'
    emit Withdraw(arg2, balances[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function depositTokensFor(address arg1, uint256 arg2, address arg3) {
    require arg2 + balances[address(arg1)][address(arg3)] >= balances[address(arg1)][address(arg3)]
    balances[address(arg1)][address(arg3)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token transfer is not successfull (maybe you haven't used approve first?)'
    emit Deposit(arg2, balances[address(arg1)][address(arg3)], arg1, arg3);
}

function depositTokens(address arg1, uint256 arg2) {
    require arg2 + balances[address(arg1)][address(msg.sender)] >= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token transfer is not successfull (maybe you haven't used approve first?)'
    emit Deposit(arg2, balances[address(arg1)][address(msg.sender)], arg1, msg.sender);
}

function depositOldTokens(address arg1, uint256 arg2, address arg3) {
    if referrals[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This user already have a referrer.'
    require arg2 + balances[address(arg1)][address(msg.sender)] >= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        if 32 != return_data.size:
            revert with 0, 'Transfer From failed'
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer From failed'
    referrals[address(msg.sender)] = arg3
    emit ReferralDeposit(address(arg1), arg2, balances[address(arg1)][address(msg.sender)], msg.sender, arg3);
}

function withdrawWhenFinished(address arg1) {
    if address(crowdsales[address(arg1)].field_2048) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only crowdsale owner can withdraw funds that are left.'
    if block.timestamp >= crowdsales[address(arg1)].field_0:
        if block.timestamp <= crowdsales[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'You can't withdraw funds yet. Crowdsale should end first.'
    crowdsales[address(arg1)].field_768 = 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(crowdsales[address(arg1)].field_2048), crowdsales[address(arg1)].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer failed'
}

function depositTokens(address arg1, uint256 arg2, address arg3) {
    if referrals[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This user already have a referrer.'
    require arg2 + balances[address(arg1)][address(msg.sender)] >= balances[address(arg1)][address(msg.sender)]
    balances[address(arg1)][address(msg.sender)] += arg2
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Token transfer is not successfull (maybe you haven't used approve first?)'
    referrals[address(msg.sender)] = arg3
    emit ReferralDeposit(address(arg1), arg2, balances[address(arg1)][address(msg.sender)], msg.sender, arg3);
}

function takeAllPossible(address[3][] arg1, uint256[3][] arg2, uint256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6, bytes4 arg7) {
    if not stor16[Mask(32, 224, arg7)]:
        revert with 0, 'Can't call this method'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg5.length
        require idx < arg6.length
        mem[96] = Mask(32, 224, arg7)
        mem[100 len 96] = call.data[(96 * idx) + arg1 + 36 len 96]
        mem[196 len 96] = call.data[(96 * idx) + arg2 + 36 len 96]
        mem[292] = cd[((32 * idx) + arg3 + 36)]
        mem[324] = uint8(cd[((32 * idx) + arg4 + 36)])
        mem[356] = cd[((32 * idx) + arg5 + 36)]
        mem[388] = cd[((32 * idx) + arg6 + 36)]
        delegate this.address with:
           funct arg7
             gas gas_remaining wei
            args call.data[(96 * idx) + arg1 + 36 len 96], call.data[(96 * idx) + arg2 + 36 len 96], cd[((32 * idx) + arg3 + 36)], cd[((32 * idx) + arg4 + 36)] << 248, cd[((32 * idx) + arg5 + 36)], cd[((32 * idx) + arg6 + 36)]
        idx = idx + 1
        continue 
}

function takeAllOrRevert(address[3][] arg1, uint256[3][] arg2, uint256[] arg3, uint8[] arg4, bytes32[] arg5, bytes32[] arg6, bytes4 arg7) {
    if not stor16[Mask(32, 224, arg7)]:
        revert with 0, 'Can't call this method'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg5.length
        require idx < arg6.length
        mem[96] = Mask(32, 224, arg7)
        mem[100 len 96] = call.data[(96 * idx) + arg1 + 36 len 96]
        mem[196 len 96] = call.data[(96 * idx) + arg2 + 36 len 96]
        mem[292] = cd[((32 * idx) + arg3 + 36)]
        mem[324] = uint8(cd[((32 * idx) + arg4 + 36)])
        mem[356] = cd[((32 * idx) + arg5 + 36)]
        mem[388] = cd[((32 * idx) + arg6 + 36)]
        delegate this.address with:
           funct arg7
             gas gas_remaining wei
            args call.data[(96 * idx) + arg1 + 36 len 96], call.data[(96 * idx) + arg2 + 36 len 96], cd[((32 * idx) + arg3 + 36)], cd[((32 * idx) + arg4 + 36)] << 248, cd[((32 * idx) + arg5 + 36)], cd[((32 * idx) + arg6 + 36)]
        if not delegate.return_code:
            revert with 0, 'Method call failed'
        idx = idx + 1
        continue 
}

function cancelOrder(address[3] arg1, uint256[3] arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address)), cd[196] << 248, cd[228], cd[260]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != msg.sender:
        revert with 0, 'Only order maker can cancel it.'
    require call.data[132] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
    filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += call.data[132]
    emit CancelOrder(sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[68]), address(call.data[36]), msg.sender);
}

function registerCrowdsale(address arg1, address arg2, uint256[8] arg3) {
    if owner != msg.sender:
        revert with 0, '{Only the owner of that contractcan execute this method'
    crowdsales[address(arg1)].field_0 = call.data[68]
    crowdsales[address(arg1)].field_256 = call.data[100]
    crowdsales[address(arg1)].field_512 = call.data[132]
    crowdsales[address(arg1)].field_768 = call.data[164]
    crowdsales[address(arg1)].field_1024 = call.data[196]
    crowdsales[address(arg1)].field_1280 = call.data[228]
    crowdsales[address(arg1)].field_1536 = call.data[260]
    crowdsales[address(arg1)].field_1792 = call.data[292]
    address(crowdsales[address(arg1)].field_2048) = arg2
    if crowdsales[address(arg1)].field_0 < block.timestamp:
        revert with 0, 'Crowdsale is not active.'
    if crowdsales[address(arg1)].field_256 < crowdsales[address(arg1)].field_0:
        revert with 0, 'Crowdsale is not active.'
    if crowdsales[address(arg1)].field_1024 <= 0:
        revert with 0, 'Crowdsale is not active.'
    if not address(crowdsales[address(arg1)].field_2048):
        revert with 0, 'Crowdsale is not active.'
    require ext_code.size(arg1)
    call arg1.getBonusFactor(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args crowdsales[address(arg1)].field_0, crowdsales[address(arg1)].field_256, crowdsales[address(arg1)].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0:
        revert with 0, 
                    32,
                    205,
                    0x5468652070726f6a6563742073686f756c642068617665202a676574426f6e7573466163746f722a2066756e6374696f6e20696d706c656d656e7465642e205468652066756e6374696f6e2073686f756c642072657475726e2074686520626f6e75732070657263656e7461676520646570656e64696e67206f6e207468652073746172742f656e64206461746520616e6420636f6e747269627574696f6e20616d6f756e742e2053686f756c642072657475726e2030206966207468657265206973206e6f20626f6e757300,
                    mem[1201 len 19]
    require ext_code.size(arg1)
    call arg1.isUserWhitelisted(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'The project should have *isUserWhitelisted* function implemented. This contract address should be whitelisted'
}

function cancelMultipleOrders(address[3][] arg1, uint256[3][] arg2, uint8[] arg3, bytes32[] arg4, bytes32[] arg5) payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < arg1.length:
        _47 = mem[64]
        mem[64] = mem[64] + 96
        mem[_47 len 96] = call.data[(96 * idx) + arg1 + 36 len 96]
        require idx < arg2.length
        _48 = mem[64]
        mem[64] = mem[64] + 96
        mem[_48 len 96] = call.data[(96 * idx) + arg2 + 36 len 96]
        require idx < arg3.length
        require idx < arg4.length
        require idx < arg5.length
        _49 = mem[64]
        mem[64] = mem[64] + 192
        mem[_49] = 0
        mem[_49 + 32] = 0
        mem[_49 + 64] = 0
        mem[_49 + 96] = 0
        mem[_49 + 128] = 0
        mem[_49 + 160] = 0
        _50 = mem[64]
        mem[64] = mem[64] + 192
        mem[_50] = 0
        mem[_50 + 32] = 0
        mem[_50 + 64] = 0
        mem[_50 + 96] = 0
        mem[_50 + 128] = 0
        mem[_50 + 160] = 0
        _51 = mem[64]
        mem[64] = mem[64] + 192
        mem[_51] = call.data[(96 * idx) + arg2 + 36]
        mem[_51 + 32] = call.data[(96 * idx) + arg2 + 68]
        mem[_51 + 64] = call.data[(96 * idx) + arg2 + 100]
        mem[_51 + 96] = address(call.data[(96 * idx) + arg1 + 36])
        mem[_51 + 128] = address(call.data[(96 * idx) + arg1 + 68])
        mem[_51 + 160] = address(call.data[(96 * idx) + arg1 + 100])
        _64 = mem[64]
        mem[mem[64] + 32] = address(call.data[(96 * idx) + arg1 + 36])
        mem[mem[64] + 52] = address(call.data[(96 * idx) + arg1 + 68])
        mem[mem[64] + 72] = call.data[(96 * idx) + arg2 + 36]
        mem[mem[64] + 104] = address(call.data[(96 * idx) + arg1 + 100])
        mem[mem[64] + 124] = call.data[(96 * idx) + arg2 + 68]
        mem[mem[64] + 156] = call.data[(96 * idx) + arg2 + 100]
        mem[mem[64] + 188] = address(this.address)
        _65 = mem[64]
        mem[mem[64]] = 176
        mem[64] = mem[64] + 208
        _66 = mem[_65]
        t = _65 + 32
        u = _64 + 208
        s = mem[_65]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_64 + floor32(mem[_65]) + 208] = mem[_64 + floor32(mem[_65]) + 208] and 256^(-(mem[_65] % 32) + 32) - 1 or mem[_65 + floor32(mem[_65]) + 32] and !(256^(-(mem[_65] % 32) + 32) - 1)
        _96 = sha3(mem[mem[64] len _64 + _66 + -mem[64] + 208])
        _98 = mem[64]
        mem[mem[64] + 32] = '\x19Ethereum Signed Message:\n32'
        mem[mem[64] + 60] = _96
        _99 = mem[64]
        mem[mem[64]] = 60
        mem[64] = mem[64] + 92
        _100 = mem[_99]
        t = _99 + 32
        u = _98 + 92
        s = mem[_99]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_98 + floor32(mem[_99]) + 92] = 256^(-(mem[_99] % 32) + 32) - 1 and mem[_98 + floor32(mem[_99]) + 92] or mem[_99 + floor32(mem[_99]) + 32] and !(256^(-(mem[_99] % 32) + 32) - 1)
        _121 = mem[64]
        _122 = sha3(mem[mem[64] len _98 + _100 + -mem[64] + 92])
        mem[mem[64]] = 0
        mem[64] = mem[64] + 32
        mem[_121 + 32] = _122
        mem[_121 + 64] = uint8(cd[((32 * idx) + arg3 + 36)])
        mem[_121 + 96] = cd[((32 * idx) + arg4 + 36)]
        mem[_121 + 128] = cd[((32 * idx) + arg5 + 36)]
        signer = erecover(_122, cd[((32 * idx) + arg3 + 36)] << 248, cd[((32 * idx) + arg4 + 36)], cd[((32 * idx) + arg5 + 36)]) 
        mem[_121] = signer
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if address(signer) != msg.sender:
            revert with 0, 'Only order maker can cancel it.'
        _127 = mem[_51 + 32]
        require mem[_51 + 32] + filledAmounts[_96] >= filledAmounts[_96]
        mem[0] = _96
        mem[32] = 3
        filledAmounts[_96] += _127
        _132 = mem[_51 + 128]
        _133 = mem[_51 + 160]
        _134 = mem[_51 + 64]
        mem[_121 + 32] = _96
        mem[_121 + 64] = _134
        emit CancelOrder(_96, _134, address(_133), address(_132), msg.sender);
        idx = idx + 1
        continue 
}

function migrateFunds(address[] arg1) {
    if not uint8(stor13.field_160):
        revert with 0, 'Fund migration is not allowed'
    require ext_code.size(newExchangeAddress)
    call newExchangeAddress.0xffa1ad74 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[31 len 1] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'New exchange version should be greater than the current version.'
    if balances[0][msg.sender] <= 0:
        mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _56 = mem[(32 * idx) + 128]
            _57 = sha3(mem[(32 * idx) + 140 len 20], 2)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 2)
            if not balances[mem[(32 * idx) + 140 len 20]][msg.sender]:
                s = balances[mem[(32 * idx) + 140 len 20]][msg.sender]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args newExchangeAddress, balances[mem[(32 * idx) + 140 len 20]][msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approve failed'
            mem[0] = msg.sender
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 2)
            balances[address(mem[(32 * idx) + 128])][msg.sender] = 0
            mem[(32 * arg1.length) + 128] = 0x83960e3c00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_56)
            mem[(32 * arg1.length) + 164] = stor[_57][msg.sender]
            mem[(32 * arg1.length) + 196] = msg.sender
            require ext_code.size(newExchangeAddress)
            call newExchangeAddress.importTokens(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(_56), stor[_57][msg.sender], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = stor[_57][msg.sender]
            s = _56
            idx = idx + 1
            continue 
    else:
        balances[0][msg.sender] = 0
        mem[100] = msg.sender
        require ext_code.size(newExchangeAddress)
        call newExchangeAddress.importEthers(address arg1) with:
           value balances[0][msg.sender] wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        s = 0
        s = 0
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _60 = mem[(32 * idx) + 128]
            _61 = sha3(mem[(32 * idx) + 140 len 20], 2)
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 2)
            if not balances[mem[(32 * idx) + 140 len 20]][msg.sender]:
                s = balances[mem[(32 * idx) + 140 len 20]][msg.sender]
                s = mem[(32 * idx) + 128]
                idx = idx + 1
                continue 
            require ext_code.size(mem[(32 * idx) + 140 len 20])
            call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args newExchangeAddress, balances[mem[(32 * idx) + 140 len 20]][msg.sender]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Approve failed'
            mem[0] = msg.sender
            mem[32] = sha3(address(mem[(32 * idx) + 128]), 2)
            balances[address(mem[(32 * idx) + 128])][msg.sender] = 0
            mem[(32 * arg1.length) + 128] = 0x83960e3c00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + 132] = address(_60)
            mem[(32 * arg1.length) + 164] = stor[_61][msg.sender]
            mem[(32 * arg1.length) + 196] = msg.sender
            require ext_code.size(newExchangeAddress)
            call newExchangeAddress.importTokens(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(_60), stor[_61][msg.sender], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            s = stor[_61][msg.sender]
            s = _60
            idx = idx + 1
            continue 
    emit FundsMigrated(msg.sender, newExchangeAddress);
}

function takeSellTokenOrder(address[3] arg1, uint256[3] arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    if discountTokenAddress != address(arg2):
        revert with 0, 'Should sell WeiDex Tokens'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address)), cd[228] << 248, cd[260], cd[292]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(call.data[4]):
        revert with 0, 'Order maker is invalid.'
    if cd[196] > balances[uint64(call.data[68]) << 96][msg.sender]:
        emit Error(1, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
        revert with 0, '.Trade failure'
    if not call.data[100]:
        require call.data[132]
        if 0 / call.data[132] > balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]:
            emit Error(0, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        if cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] > call.data[132]:
            emit Error(2, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += cd[196]
        require cd[196] <= balances[uint64(call.data[68]) << 96][msg.sender]
        balances[uint64(call.data[68]) << 96][msg.sender] -= cd[196]
        require cd[196] + balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] >= balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] += cd[196]
        require (0 / call.data[132]) + balances[uint64(call.data[36]) << 96][msg.sender] >= balances[uint64(call.data[36]) << 96][msg.sender]
        balances[uint64(call.data[36]) << 96][msg.sender] += 0 / call.data[132]
        require 0 / call.data[132] <= balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96] -= 0 / call.data[132]
        emit TakeOrder(msg.sender, cd[196], 0 / call.data[132], sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[4]), address(call.data[68]), address(call.data[36]));
        if 0 >= 0 / call.data[132]:
            revert with 0, '.Trade failure'
    else:
        require cd[196] * call.data[100] / call.data[100] == cd[196]
        require call.data[132]
        if cd[196] * call.data[100] / call.data[132] > balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]:
            emit Error(0, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        if cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] > call.data[132]:
            emit Error(2, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += cd[196]
        require cd[196] <= balances[uint64(call.data[68]) << 96][msg.sender]
        balances[uint64(call.data[68]) << 96][msg.sender] -= cd[196]
        require cd[196] + balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] >= balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] += cd[196]
        require (cd[196] * call.data[100] / call.data[132]) + balances[uint64(call.data[36]) << 96][msg.sender] >= balances[uint64(call.data[36]) << 96][msg.sender]
        balances[uint64(call.data[36]) << 96][msg.sender] += cd[196] * call.data[100] / call.data[132]
        require cd[196] * call.data[100] / call.data[132] <= balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96] -= cd[196] * call.data[100] / call.data[132]
        emit TakeOrder(msg.sender, cd[196], cd[196] * call.data[100] / call.data[132], sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[4]), address(call.data[68]), address(call.data[36]));
        if 0 >= cd[196] * call.data[100] / call.data[132]:
            revert with 0, '.Trade failure'
    if block.timestamp / 24 * 3600 <= stor7:
        require cd[196] + dailyVolume >= dailyVolume
        dailyVolume += cd[196]
    else:
        dailyVolume = cd[196]
        stor7 = block.timestamp / 24 * 3600
    if arg4 >= stor9:
        if not arg5:
            require arg4
            stor8 = 0 / arg4
        else:
            require 10^18 * arg5 / arg5 == 10^18
            require arg4
            stor8 = 10^18 * arg5 / arg4
}

function takeBuyTokenOrder(address[3] arg1, uint256[3] arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    if discountTokenAddress != address(arg3):
        revert with 0, 'Should buy WeiDex Tokens'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address)), cd[228] << 248, cd[260], cd[292]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(call.data[4]):
        revert with 0, 'Order maker is invalid.'
    if cd[196] > balances[uint64(call.data[68]) << 96][msg.sender]:
        emit Error(1, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
        revert with 0, '.Trade failure'
    if not call.data[100]:
        require call.data[132]
        if 0 / call.data[132] > balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]:
            emit Error(0, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        if cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] > call.data[132]:
            emit Error(2, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += cd[196]
        require cd[196] <= balances[uint64(call.data[68]) << 96][msg.sender]
        balances[uint64(call.data[68]) << 96][msg.sender] -= cd[196]
        require cd[196] + balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] >= balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] += cd[196]
        require (0 / call.data[132]) + balances[uint64(call.data[36]) << 96][msg.sender] >= balances[uint64(call.data[36]) << 96][msg.sender]
        balances[uint64(call.data[36]) << 96][msg.sender] += 0 / call.data[132]
        require 0 / call.data[132] <= balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96] -= 0 / call.data[132]
        emit TakeOrder(msg.sender, cd[196], 0 / call.data[132], sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[4]), address(call.data[68]), address(call.data[36]));
        if 0 / call.data[132] <= 0:
            revert with 0, '.Trade failure'
        if block.timestamp / 24 * 3600 <= stor7:
            require (0 / call.data[132]) + dailyVolume >= dailyVolume
            dailyVolume += 0 / call.data[132]
        else:
            dailyVolume = 0 / call.data[132]
            stor7 = block.timestamp / 24 * 3600
    else:
        require cd[196] * call.data[100] / call.data[100] == cd[196]
        require call.data[132]
        if cd[196] * call.data[100] / call.data[132] > balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]:
            emit Error(0, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        if cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] > call.data[132]:
            emit Error(2, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += cd[196]
        require cd[196] <= balances[uint64(call.data[68]) << 96][msg.sender]
        balances[uint64(call.data[68]) << 96][msg.sender] -= cd[196]
        require cd[196] + balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] >= balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] += cd[196]
        require (cd[196] * call.data[100] / call.data[132]) + balances[uint64(call.data[36]) << 96][msg.sender] >= balances[uint64(call.data[36]) << 96][msg.sender]
        balances[uint64(call.data[36]) << 96][msg.sender] += cd[196] * call.data[100] / call.data[132]
        require cd[196] * call.data[100] / call.data[132] <= balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96] -= cd[196] * call.data[100] / call.data[132]
        emit TakeOrder(msg.sender, cd[196], cd[196] * call.data[100] / call.data[132], sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[4]), address(call.data[68]), address(call.data[36]));
        if cd[196] * call.data[100] / call.data[132] <= 0:
            revert with 0, '.Trade failure'
        if block.timestamp / 24 * 3600 <= stor7:
            require (cd[196] * call.data[100] / call.data[132]) + dailyVolume >= dailyVolume
            dailyVolume += cd[196] * call.data[100] / call.data[132]
        else:
            dailyVolume = cd[196] * call.data[100] / call.data[132]
            stor7 = block.timestamp / 24 * 3600
    if arg5 >= stor9:
        if not arg4:
            require arg5
            stor8 = 0 / arg5
        else:
            require 10^18 * arg4 / arg4 == 10^18
            require arg5
            stor8 = 10^18 * arg4 / arg5
}

function buyTokens(address arg1) payable {
    require ext_code.size(arg1)
    call arg1.isUserWhitelisted(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'User is not whitelisted'
    if block.timestamp < crowdsales[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contribution is not valid: Check minimum/maximum contribution amount or if crowdsale cap is reached'
    if block.timestamp > crowdsales[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contribution is not valid: Check minimum/maximum contribution amount or if crowdsale cap is reached'
    if msg.value < crowdsales[address(arg1)].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contribution is not valid: Check minimum/maximum contribution amount or if crowdsale cap is reached'
    require msg.value + userContributionForProject[address(arg1)][address(msg.sender)] >= userContributionForProject[address(arg1)][address(msg.sender)]
    if msg.value + userContributionForProject[address(arg1)][address(msg.sender)] > crowdsales[address(arg1)].field_1536:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contribution is not valid: Check minimum/maximum contribution amount or if crowdsale cap is reached'
    require msg.value + crowdsales[address(arg1)].field_1792 >= crowdsales[address(arg1)].field_1792
    if crowdsales[address(arg1)].field_512 < msg.value + crowdsales[address(arg1)].field_1792:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contribution is not valid: Check minimum/maximum contribution amount or if crowdsale cap is reached'
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Contribution is not valid: Check minimum/maximum contribution amount or if crowdsale cap is reached'
    if not msg.value:
        require ext_code.size(arg1)
        call arg1.getBonusFactor(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args crowdsales[address(arg1)].field_0, crowdsales[address(arg1)].field_256, msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0 <= crowdsales[address(arg1)].field_768
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Transfer failed'
        require msg.value + crowdsales[address(arg1)].field_1792 >= crowdsales[address(arg1)].field_1792
        crowdsales[address(arg1)].field_1792 += msg.value
        require msg.value + userContributionForProject[address(arg1)][address(msg.sender)] >= userContributionForProject[address(arg1)][address(msg.sender)]
        userContributionForProject[address(arg1)][address(msg.sender)] += msg.value
        require msg.value + balances[0][address(stor14[address(arg1)].field_2048)] >= balances[0][address(stor14[address(arg1)].field_2048)]
        balances[0][address(stor14[address(arg1)].field_2048)] += msg.value
        emit TokenPurchase(0, msg.value, arg1, msg.sender);
    else:
        require crowdsales[address(arg1)].field_1024 * msg.value / msg.value == crowdsales[address(arg1)].field_1024
        require ext_code.size(arg1)
        call arg1.getBonusFactor(uint256 arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args crowdsales[address(arg1)].field_0, crowdsales[address(arg1)].field_256, msg.value
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not crowdsales[address(arg1)].field_1024 * msg.value:
            require crowdsales[address(arg1)].field_1024 * msg.value >= crowdsales[address(arg1)].field_1024 * msg.value
            require crowdsales[address(arg1)].field_1024 * msg.value <= crowdsales[address(arg1)].field_768
            crowdsales[address(arg1)].field_768 += -1 * crowdsales[address(arg1)].field_1024 * msg.value
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, crowdsales[address(arg1)].field_1024 * msg.value
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            require msg.value + crowdsales[address(arg1)].field_1792 >= crowdsales[address(arg1)].field_1792
            crowdsales[address(arg1)].field_1792 += msg.value
            require msg.value + userContributionForProject[address(arg1)][address(msg.sender)] >= userContributionForProject[address(arg1)][address(msg.sender)]
            userContributionForProject[address(arg1)][address(msg.sender)] += msg.value
            require msg.value + balances[0][address(stor14[address(arg1)].field_2048)] >= balances[0][address(stor14[address(arg1)].field_2048)]
            balances[0][address(stor14[address(arg1)].field_2048)] += msg.value
            emit TokenPurchase(crowdsales[address(arg1)].field_1024 * msg.value, msg.value, arg1, msg.sender);
        else:
            require ext_call.return_data[0] * crowdsales[address(arg1)].field_1024 * msg.value / crowdsales[address(arg1)].field_1024 * msg.value == ext_call.return_data[0]
            require (ext_call.return_data[0] * crowdsales[address(arg1)].field_1024 * msg.value / 100) + (crowdsales[address(arg1)].field_1024 * msg.value) >= crowdsales[address(arg1)].field_1024 * msg.value
            require (ext_call.return_data[0] * crowdsales[address(arg1)].field_1024 * msg.value / 100) + (crowdsales[address(arg1)].field_1024 * msg.value) <= crowdsales[address(arg1)].field_768
            crowdsales[address(arg1)].field_768 = crowdsales[address(arg1)].field_768 - (ext_call.return_data[0] * crowdsales[address(arg1)].field_1024 * msg.value / 100) - (crowdsales[address(arg1)].field_1024 * msg.value)
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (ext_call.return_data[0] * crowdsales[address(arg1)].field_1024 * msg.value / 100) + (crowdsales[address(arg1)].field_1024 * msg.value)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed'
            require msg.value + crowdsales[address(arg1)].field_1792 >= crowdsales[address(arg1)].field_1792
            crowdsales[address(arg1)].field_1792 += msg.value
            require msg.value + userContributionForProject[address(arg1)][address(msg.sender)] >= userContributionForProject[address(arg1)][address(msg.sender)]
            userContributionForProject[address(arg1)][address(msg.sender)] += msg.value
            require msg.value + balances[0][address(stor14[address(arg1)].field_2048)] >= balances[0][address(stor14[address(arg1)].field_2048)]
            balances[0][address(stor14[address(arg1)].field_2048)] += msg.value
            emit TokenPurchase((ext_call.return_data[0] * crowdsales[address(arg1)].field_1024 * msg.value / 100) + (crowdsales[address(arg1)].field_1024 * msg.value), msg.value, arg1, msg.sender);
}

function takeSellOrder(address[3] arg1, uint256[3] arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    if address(call.data[68]):
        revert with 0, 'Base currency must be ether's (0x0)'
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address)), cd[228] << 248, cd[260], cd[292]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != address(call.data[4]):
        revert with 0, 'Order maker is invalid.'
    if cd[196] > balances[uint64(call.data[68]) << 96][msg.sender]:
        emit Error(1, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
        revert with 0, '.Trade failure'
    if not call.data[100]:
        require call.data[132]
        if 0 / call.data[132] > balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]:
            emit Error(0, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        if cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] > call.data[132]:
            emit Error(2, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += cd[196]
        require cd[196] <= balances[uint64(call.data[68]) << 96][msg.sender]
        balances[uint64(call.data[68]) << 96][msg.sender] -= cd[196]
        require cd[196] + balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] >= balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] += cd[196]
        require (0 / call.data[132]) + balances[uint64(call.data[36]) << 96][msg.sender] >= balances[uint64(call.data[36]) << 96][msg.sender]
        balances[uint64(call.data[36]) << 96][msg.sender] += 0 / call.data[132]
        require 0 / call.data[132] <= balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96] -= 0 / call.data[132]
        emit TakeOrder(msg.sender, cd[196], 0 / call.data[132], sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[4]), address(call.data[68]), address(call.data[36]));
        if 0 / call.data[132] <= 0:
            revert with 0, '.Trade failure'
        if block.timestamp / 24 * 3600 <= stor7:
            require cd[196] + dailyVolume >= dailyVolume
            dailyVolume += cd[196]
        else:
            dailyVolume = cd[196]
            stor7 = block.timestamp / 24 * 3600
        if dailyVolume < dailyVolumeCap:
            if not cd[196]:
                require stor8
                require feeRate
                require 2 * feeRate / feeRate == 2
                require 2 * feeRate
                require feeRate
                require referralFeeRate
                if 0 / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(call.data[4])]:
                    require cd[196] / feeRate <= balances[0][address(call.data[4])]
                    balances[0][address(call.data[4])] -= cd[196] / feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor12[address(call.data[4])]] >= balances[0][stor12[address(call.data[4])]]
                            balances[0][stor12[address(call.data[4])]] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                else:
                    require 0 / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(call.data[4])]
                    balances[address(stor10.field_0)][address(call.data[4])] -= 0 / stor8 / 2 * feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(call.data[4])]] >= balances[address(stor10.field_0)][stor12[address(call.data[4])]]
                            balances[address(stor10.field_0)][stor12[address(call.data[4])]] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
                require feeRate
                require referralFeeRate
                if 0 / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(msg.sender)]:
                    require 0 / call.data[132] / feeRate <= balances[address(call.data[36])][address(msg.sender)]
                    balances[address(call.data[36])][address(msg.sender)] -= 0 / call.data[132] / feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (0 / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += 0 / call.data[132] / feeRate
                        else:
                            require 0 / call.data[132] / feeRate / referralFeeRate <= 0 / call.data[132] / feeRate
                            require (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor12[address(msg.sender)]] >= balances[address(call.data[36])][stor12[address(msg.sender)]]
                            balances[address(call.data[36])][stor12[address(msg.sender)]] += 0 / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, address(call.data[36]), 0 / call.data[132] / feeRate, 0 / call.data[132] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (0 / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += 0 / call.data[132] / feeRate
                        else:
                            require 0 / call.data[132] / feeRate / referralFeeRate <= 0 / call.data[132] / feeRate
                            require (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += 0 / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, address(call.data[36]), 0 / call.data[132] / feeRate, 0 / call.data[132] / feeRate / referralFeeRate);
                else:
                    require 0 / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(msg.sender)]
                    balances[address(stor10.field_0)][address(msg.sender)] -= 0 / stor8 / 2 * feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(msg.sender)]] >= balances[address(stor10.field_0)][stor12[address(msg.sender)]]
                            balances[address(stor10.field_0)][stor12[address(msg.sender)]] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
            else:
                require 10^18 * cd[196] / cd[196] == 10^18
                require stor8
                require feeRate
                require 2 * feeRate / feeRate == 2
                require 2 * feeRate
                require feeRate
                require referralFeeRate
                if 10^18 * cd[196] / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(call.data[4])]:
                    require cd[196] / feeRate <= balances[0][address(call.data[4])]
                    balances[0][address(call.data[4])] -= cd[196] / feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor12[address(call.data[4])]] >= balances[0][stor12[address(call.data[4])]]
                            balances[0][stor12[address(call.data[4])]] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                else:
                    require 10^18 * cd[196] / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(call.data[4])]
                    balances[address(stor10.field_0)][address(call.data[4])] -= 10^18 * cd[196] / stor8 / 2 * feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(call.data[4])]] >= balances[address(stor10.field_0)][stor12[address(call.data[4])]]
                            balances[address(stor10.field_0)][stor12[address(call.data[4])]] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
                require feeRate
                require referralFeeRate
                if 10^18 * cd[196] / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(msg.sender)]:
                    require 0 / call.data[132] / feeRate <= balances[address(call.data[36])][address(msg.sender)]
                    balances[address(call.data[36])][address(msg.sender)] -= 0 / call.data[132] / feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (0 / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += 0 / call.data[132] / feeRate
                        else:
                            require 0 / call.data[132] / feeRate / referralFeeRate <= 0 / call.data[132] / feeRate
                            require (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor12[address(msg.sender)]] >= balances[address(call.data[36])][stor12[address(msg.sender)]]
                            balances[address(call.data[36])][stor12[address(msg.sender)]] += 0 / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, address(call.data[36]), 0 / call.data[132] / feeRate, 0 / call.data[132] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (0 / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += 0 / call.data[132] / feeRate
                        else:
                            require 0 / call.data[132] / feeRate / referralFeeRate <= 0 / call.data[132] / feeRate
                            require (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (0 / call.data[132] / feeRate) - (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (0 / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += 0 / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, address(call.data[36]), 0 / call.data[132] / feeRate, 0 / call.data[132] / feeRate / referralFeeRate);
                else:
                    require 10^18 * cd[196] / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(msg.sender)]
                    balances[address(stor10.field_0)][address(msg.sender)] -= 10^18 * cd[196] / stor8 / 2 * feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(msg.sender)]] >= balances[address(stor10.field_0)][stor12[address(msg.sender)]]
                            balances[address(stor10.field_0)][stor12[address(msg.sender)]] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
    else:
        require cd[196] * call.data[100] / call.data[100] == cd[196]
        require call.data[132]
        if cd[196] * call.data[100] / call.data[132] > balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]:
            emit Error(0, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        if cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] > call.data[132]:
            emit Error(2, sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address));
            revert with 0, '.Trade failure'
        require cd[196] + filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] >= filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address]
        filledAmounts[address(call.data[4])][address(call.data[36])][call.data[100]][address(call.data[68])][call.data[132]][call.data[164]][this.address] += cd[196]
        require cd[196] <= balances[uint64(call.data[68]) << 96][msg.sender]
        balances[uint64(call.data[68]) << 96][msg.sender] -= cd[196]
        require cd[196] + balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] >= balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[68]) << 96][uint64(call.data[4]) << 96] += cd[196]
        require (cd[196] * call.data[100] / call.data[132]) + balances[uint64(call.data[36]) << 96][msg.sender] >= balances[uint64(call.data[36]) << 96][msg.sender]
        balances[uint64(call.data[36]) << 96][msg.sender] += cd[196] * call.data[100] / call.data[132]
        require cd[196] * call.data[100] / call.data[132] <= balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96]
        balances[uint64(call.data[36]) << 96][uint64(call.data[4]) << 96] -= cd[196] * call.data[100] / call.data[132]
        emit TakeOrder(msg.sender, cd[196], cd[196] * call.data[100] / call.data[132], sha3(address(call.data[4]), address(call.data[36]), call.data[100], address(call.data[68]), call.data[132], call.data[164], this.address), call.data[164], address(call.data[4]), address(call.data[68]), address(call.data[36]));
        if cd[196] * call.data[100] / call.data[132] <= 0:
            revert with 0, '.Trade failure'
        if block.timestamp / 24 * 3600 <= stor7:
            require cd[196] + dailyVolume >= dailyVolume
            dailyVolume += cd[196]
        else:
            dailyVolume = cd[196]
            stor7 = block.timestamp / 24 * 3600
        if dailyVolume < dailyVolumeCap:
            if not cd[196]:
                require stor8
                require feeRate
                require 2 * feeRate / feeRate == 2
                require 2 * feeRate
                require feeRate
                require referralFeeRate
                if 0 / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(call.data[4])]:
                    require cd[196] / feeRate <= balances[0][address(call.data[4])]
                    balances[0][address(call.data[4])] -= cd[196] / feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor12[address(call.data[4])]] >= balances[0][stor12[address(call.data[4])]]
                            balances[0][stor12[address(call.data[4])]] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                else:
                    require 0 / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(call.data[4])]
                    balances[address(stor10.field_0)][address(call.data[4])] -= 0 / stor8 / 2 * feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(call.data[4])]] >= balances[address(stor10.field_0)][stor12[address(call.data[4])]]
                            balances[address(stor10.field_0)][stor12[address(call.data[4])]] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
                require feeRate
                require referralFeeRate
                if 0 / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(msg.sender)]:
                    require cd[196] * call.data[100] / call.data[132] / feeRate <= balances[address(call.data[36])][address(msg.sender)]
                    balances[address(call.data[36])][address(msg.sender)] -= cd[196] * call.data[100] / call.data[132] / feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += cd[196] * call.data[100] / call.data[132] / feeRate
                        else:
                            require cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate <= cd[196] * call.data[100] / call.data[132] / feeRate
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor12[address(msg.sender)]] >= balances[address(call.data[36])][stor12[address(msg.sender)]]
                            balances[address(call.data[36])][stor12[address(msg.sender)]] += cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, address(call.data[36]), cd[196] * call.data[100] / call.data[132] / feeRate, cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += cd[196] * call.data[100] / call.data[132] / feeRate
                        else:
                            require cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate <= cd[196] * call.data[100] / call.data[132] / feeRate
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, address(call.data[36]), cd[196] * call.data[100] / call.data[132] / feeRate, cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate);
                else:
                    require 0 / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(msg.sender)]
                    balances[address(stor10.field_0)][address(msg.sender)] -= 0 / stor8 / 2 * feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(msg.sender)]] >= balances[address(stor10.field_0)][stor12[address(msg.sender)]]
                            balances[address(stor10.field_0)][stor12[address(msg.sender)]] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (0 / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate
                        else:
                            require 0 / stor8 / 2 * feeRate / referralFeeRate <= 0 / stor8 / 2 * feeRate
                            require (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (0 / stor8 / 2 * feeRate) - (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (0 / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 0 / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, discountTokenAddress, 0 / stor8 / 2 * feeRate, 0 / stor8 / 2 * feeRate / referralFeeRate);
            else:
                require 10^18 * cd[196] / cd[196] == 10^18
                require stor8
                require feeRate
                require 2 * feeRate / feeRate == 2
                require 2 * feeRate
                require feeRate
                require referralFeeRate
                if 10^18 * cd[196] / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(call.data[4])]:
                    require cd[196] / feeRate <= balances[0][address(call.data[4])]
                    balances[0][address(call.data[4])] -= cd[196] / feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor12[address(call.data[4])]] >= balances[0][stor12[address(call.data[4])]]
                            balances[0][stor12[address(call.data[4])]] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (cd[196] / feeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate
                        else:
                            require cd[196] / feeRate / referralFeeRate <= cd[196] / feeRate
                            require (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] = (cd[196] / feeRate) - (cd[196] / feeRate / referralFeeRate) + balances[0][stor4]
                            require (cd[196] / feeRate / referralFeeRate) + balances[0][stor4] >= balances[0][stor4]
                            balances[0][stor4] += cd[196] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), 0, cd[196] / feeRate, cd[196] / feeRate / referralFeeRate);
                else:
                    require 10^18 * cd[196] / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(call.data[4])]
                    balances[address(stor10.field_0)][address(call.data[4])] -= 10^18 * cd[196] / stor8 / 2 * feeRate
                    if referrals[address(call.data[4])]:
                        if feeAccount == referrals[address(call.data[4])]:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(call.data[4])]] >= balances[address(stor10.field_0)][stor12[address(call.data[4])]]
                            balances[address(stor10.field_0)][stor12[address(call.data[4])]] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(call.data[4])], address(call.data[4]), discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, address(call.data[4]), discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
                require feeRate
                require referralFeeRate
                if 10^18 * cd[196] / stor8 / 2 * feeRate > balances[address(stor10.field_0)][address(msg.sender)]:
                    require cd[196] * call.data[100] / call.data[132] / feeRate <= balances[address(call.data[36])][address(msg.sender)]
                    balances[address(call.data[36])][address(msg.sender)] -= cd[196] * call.data[100] / call.data[132] / feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += cd[196] * call.data[100] / call.data[132] / feeRate
                        else:
                            require cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate <= cd[196] * call.data[100] / call.data[132] / feeRate
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor12[address(msg.sender)]] >= balances[address(call.data[36])][stor12[address(msg.sender)]]
                            balances[address(call.data[36])][stor12[address(msg.sender)]] += cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, address(call.data[36]), cd[196] * call.data[100] / call.data[132] / feeRate, cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += cd[196] * call.data[100] / call.data[132] / feeRate
                        else:
                            require cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate <= cd[196] * call.data[100] / call.data[132] / feeRate
                            require (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] = (cd[196] * call.data[100] / call.data[132] / feeRate) - (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4]
                            require (cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate) + balances[address(call.data[36])][stor4] >= balances[address(call.data[36])][stor4]
                            balances[address(call.data[36])][stor4] += cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, address(call.data[36]), cd[196] * call.data[100] / call.data[132] / feeRate, cd[196] * call.data[100] / call.data[132] / feeRate / referralFeeRate);
                else:
                    require 10^18 * cd[196] / stor8 / 2 * feeRate <= balances[address(stor10.field_0)][address(msg.sender)]
                    balances[address(stor10.field_0)][address(msg.sender)] -= 10^18 * cd[196] / stor8 / 2 * feeRate
                    if referrals[address(msg.sender)]:
                        if feeAccount == referrals[address(msg.sender)]:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor12[address(msg.sender)]] >= balances[address(stor10.field_0)][stor12[address(msg.sender)]]
                            balances[address(stor10.field_0)][stor12[address(msg.sender)]] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(referrals[address(msg.sender)], msg.sender, discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
                    else:
                        if feeAccount == feeAccount:
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate
                        else:
                            require 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate <= 10^18 * cd[196] / stor8 / 2 * feeRate
                            require (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] = (10^18 * cd[196] / stor8 / 2 * feeRate) - (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4]
                            require (10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate) + balances[address(stor10.field_0)][stor4] >= balances[address(stor10.field_0)][stor4]
                            balances[address(stor10.field_0)][stor4] += 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate
                        emit ReferralBalanceUpdated(feeAccount, msg.sender, discountTokenAddress, 10^18 * cd[196] / stor8 / 2 * feeRate, 10^18 * cd[196] / stor8 / 2 * feeRate / referralFeeRate);
}



}
