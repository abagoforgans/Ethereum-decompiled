contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint8 stor1;
address owner; offset 8
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor8;
mapping of struct sub_bb8d6b1d;
mapping of uint256 sub_904e19a9;
uint256 totalWhiteListed;
array of address holdersIndex;
uint256 tokenPrice;
uint256 totalReleased;
uint8 sub_6daeb6a5; offset 160
address managerAddress;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function holdersIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < holdersIndex.length
    return holdersIndex[arg1]
}

function decimals() {
    return decimals
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function manager() {
    return managerAddress
}

function paused() {
    return bool(stor1)
}

function sub_6daeb6a5(?) {
    return bool(sub_6daeb6a5)
}

function isWhiteListed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_bb8d6b1d[address(arg1)].field_0), sub_bb8d6b1d[address(arg1)].field_256
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function membership(address arg1) {
    require calldata.size - 4 >= 32
    return bool(sub_bb8d6b1d[arg1].field_0), 
           sub_bb8d6b1d[arg1].field_0,
           sub_bb8d6b1d[arg1].field_256,
           sub_bb8d6b1d[arg1].field_512,
           sub_bb8d6b1d[arg1].field_768,
           bool(sub_bb8d6b1d[arg1].field_1024),
           sub_bb8d6b1d[arg1].field_1280,
           bool(sub_bb8d6b1d[arg1].field_1536)
}

function tokenPrice() {
    return tokenPrice
}

function owner() {
    return owner
}

function sub_904e19a9(?) {
    require calldata.size - 4 >= 32
    return sub_904e19a9[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalWhiteListed() {
    return totalWhiteListed
}

function isMinter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor8[address(arg1)])
}

function sub_bb8d6b1d(?) {
    require calldata.size - 4 >= 32
    return bool(sub_bb8d6b1d[address(arg1)].field_0), 
           sub_bb8d6b1d[address(arg1)].field_0,
           sub_bb8d6b1d[address(arg1)].field_256,
           sub_bb8d6b1d[address(arg1)].field_512,
           sub_bb8d6b1d[address(arg1)].field_768,
           bool(sub_bb8d6b1d[address(arg1)].field_1024),
           sub_bb8d6b1d[address(arg1)].field_1280,
           bool(sub_bb8d6b1d[address(arg1)].field_1536)
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function totalReleased() {
    return totalReleased
}

function sub_ec759b32(?) {
    return holdersIndex.length
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function unpause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function renounceMinter() {
    require msg.sender
    require stor8[address(msg.sender)]
    stor8[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function addMinter(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require not stor8[address(arg1)]
    stor8[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function sub_c669df6d(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(sub_bb8d6b1d[address(arg1)].field_1536) == 1
    sub_bb8d6b1d[address(arg1)].field_1536 = 0
    sub_bb8d6b1d[address(arg1)].field_0 = 1
    emit 0xf9ce1cad: arg1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function sub_f54b759e(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not sub_bb8d6b1d[address(arg1)].field_0:
        sub_bb8d6b1d[address(arg1)].field_0 = 1
    else:
        sub_bb8d6b1d[address(arg1)].field_0 = 0
    emit 0x99219286: address(arg1), bool(sub_bb8d6b1d[address(arg1)].field_0)
}

function removeFromWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require bool(sub_bb8d6b1d[address(arg1)].field_0) == 1
    sub_bb8d6b1d[address(arg1)].field_0 = 0
    sub_bb8d6b1d[address(arg1)].field_256 = 0
    sub_bb8d6b1d[address(arg1)].field_8 = 0
    sub_bb8d6b1d[address(arg1)].field_512 = 0
    totalWhiteListed--
    emit LogRemoveWhiteListed(arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function burnBlacklistedFunds(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User to blacklisted'
    require arg1
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
    emit 0x6997c1eb: balanceOf[address(arg1)], arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0x2e596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0x2e596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0x2e596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg1 == this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x2e596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[211 len 17]
    if not sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User is blacklisted'
    require msg.sender
    require stor8[address(msg.sender)]
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User to blacklisted'
    if arg1 == this.address:
        revert with 0, 
                    32,
                    47,
                    0x2e596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if sub_bb8d6b1d[address(arg1)].field_0:
        revert with 0, 'User from is blacklisted'
    if sub_bb8d6b1d[address(arg2)].field_0:
        revert with 0, 'User to blacklisted'
    if arg2 == this.address:
        revert with 0, 
                    32,
                    47,
                    0x2e596f752061726520747279696e6720746f2073656e6420746f6b656e7320746f20746f6b656e20636f6e74726163,
                    mem[1235 len 17]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function swapTokens() payable {
    if not sub_bb8d6b1d[address(msg.sender)].field_0:
        revert with 0, 'User is blacklisted'
    require ext_code.size(managerAddress)
    staticcall managerAddress.0xde2eea4b with:
            gas gas_remaining wei
           args 't'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require tokenPrice
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require msg.sender
    require totalSupply + (msg.value * 10^decimals / tokenPrice) >= totalSupply
    totalSupply += msg.value * 10^decimals / tokenPrice
    require balanceOf[address(msg.sender)] + (msg.value * 10^decimals / tokenPrice) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * 10^decimals / tokenPrice
    emit Transfer((msg.value * 10^decimals / tokenPrice), 0, msg.sender);
    require sub_bb8d6b1d[address(msg.sender)].field_768 + (msg.value * 10^decimals / tokenPrice) >= sub_bb8d6b1d[address(msg.sender)].field_768
    sub_bb8d6b1d[address(msg.sender)].field_768 += msg.value * 10^decimals / tokenPrice
    emit LogTransferSold((msg.value * 10^decimals / tokenPrice), msg.sender);
}

function sub_ee725435(?) {
    require calldata.size - 4 >= 64
    if not sub_6daeb6a5:
        if not sub_bb8d6b1d[address(arg1)].field_512:
            sub_bb8d6b1d[address(arg1)].field_0 = 1
            sub_bb8d6b1d[address(arg1)].field_8 = 0
            sub_bb8d6b1d[address(arg1)].field_256 = 0
            sub_bb8d6b1d[address(arg1)].field_256 = arg2
            sub_bb8d6b1d[address(arg1)].field_512 = block.timestamp
            sub_bb8d6b1d[address(arg1)].field_768 = 0
            sub_bb8d6b1d[address(arg1)].field_1024 = 0
            sub_bb8d6b1d[address(arg1)].field_1280 = 0
            sub_bb8d6b1d[address(arg1)].field_1536 = 0
            totalWhiteListed++
            holdersIndex.length++
            holdersIndex[holdersIndex.length] = arg1
            emit 0x4a699093: arg1
    else:
        if msg.sender == owner:
            if not sub_bb8d6b1d[address(arg1)].field_512:
                sub_bb8d6b1d[address(arg1)].field_0 = 1
                sub_bb8d6b1d[address(arg1)].field_8 = 0
                sub_bb8d6b1d[address(arg1)].field_256 = 0
                sub_bb8d6b1d[address(arg1)].field_256 = arg2
                sub_bb8d6b1d[address(arg1)].field_512 = block.timestamp
                sub_bb8d6b1d[address(arg1)].field_768 = 0
                sub_bb8d6b1d[address(arg1)].field_1024 = 0
                sub_bb8d6b1d[address(arg1)].field_1280 = 0
                sub_bb8d6b1d[address(arg1)].field_1536 = 0
                totalWhiteListed++
                holdersIndex.length++
                holdersIndex[holdersIndex.length] = arg1
                emit 0x4a699093: arg1
        else:
            if not sub_bb8d6b1d[address(arg1)].field_512:
                sub_bb8d6b1d[address(arg1)].field_0 = 0
                sub_bb8d6b1d[address(arg1)].field_8 = 0
                sub_bb8d6b1d[address(arg1)].field_256 = 0
                sub_bb8d6b1d[address(arg1)].field_256 = arg2
                sub_bb8d6b1d[address(arg1)].field_512 = block.timestamp
                sub_bb8d6b1d[address(arg1)].field_768 = 0
                sub_bb8d6b1d[address(arg1)].field_1024 = 0
                sub_bb8d6b1d[address(arg1)].field_1280 = 0
                sub_bb8d6b1d[address(arg1)].field_1536 = 1
                totalWhiteListed++
                holdersIndex.length++
                holdersIndex[holdersIndex.length] = arg1
                emit 0x4a699093: arg1
    require ext_code.size(managerAddress)
    staticcall managerAddress.0xaff9ab0e with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != -1:
        require ext_code.size(managerAddress)
        call managerAddress.0xa67ef8a7 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            return 0
    else:
        return 0
}

function claim() {
    require ext_code.size(managerAddress)
    staticcall managerAddress.0xde2eea4b with:
            gas gas_remaining wei
           args 't'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x667b0b38 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x2e546865207061796d656e74206973206e6f7420617661696c61626c6520617420746869732074696d65,
                    mem[206 len 22]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x38244123 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_bb8d6b1d[address(msg.sender)].field_768 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74596f752068617665206e6f7420626f7567687420616e7920746f6b656e73206f6e207468697320706c6174666f726d,
                    mem[212 len 16]
    if sub_bb8d6b1d[address(msg.sender)].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x74596f75206861766520616c726561647920636c61696d656420796f7572207061796d656e,
                    mem[201 len 27]
    if not ext_call.return_data[0]:
        require 10^decimals > 0
        require 10^decimals
        if not 0 / 10^decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x745061796d656e742068617320746f2062652067726561746572207468616e2030204554,
                        mem[200 len 28]
        if eth.balance(this.address) < 0 / 10^decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x2e5468657265206973206e6f7420656e6f7567682045544820696e2074686520636f6e74726163,
                        mem[203 len 25]
        sub_bb8d6b1d[address(msg.sender)].field_1024 = 1
        require sub_bb8d6b1d[address(msg.sender)].field_1280 + (0 / 10^decimals) >= sub_bb8d6b1d[address(msg.sender)].field_1280
        sub_bb8d6b1d[address(msg.sender)].field_1280 += 0 / 10^decimals
        require totalReleased + (0 / 10^decimals) >= totalReleased
        totalReleased += 0 / 10^decimals
        require address(ext_call.return_data[0])
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        require balanceOf[address(ext_call.return_data[0])] + balanceOf[address(msg.sender)] >= balanceOf[address(ext_call.return_data[0])]
        balanceOf[address(ext_call.return_data[0])] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, address(ext_call.return_data[0]));
        call msg.sender with:
           value 0 / 10^decimals wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9ff0d24b: (0 / 10^decimals), msg.sender
    else:
        require ext_call.return_data[0]
        require ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / ext_call.return_data[0] == sub_bb8d6b1d[address(msg.sender)].field_768
        require 10^decimals > 0
        require 10^decimals
        if not ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x745061796d656e742068617320746f2062652067726561746572207468616e2030204554,
                        mem[200 len 28]
        if eth.balance(this.address) < ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        39,
                        0x2e5468657265206973206e6f7420656e6f7567682045544820696e2074686520636f6e74726163,
                        mem[203 len 25]
        sub_bb8d6b1d[address(msg.sender)].field_1024 = 1
        require sub_bb8d6b1d[address(msg.sender)].field_1280 + (ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals) >= sub_bb8d6b1d[address(msg.sender)].field_1280
        sub_bb8d6b1d[address(msg.sender)].field_1280 += ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals
        require totalReleased + (ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals) >= totalReleased
        totalReleased += ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals
        require address(ext_call.return_data[0])
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        require balanceOf[address(ext_call.return_data[0])] + balanceOf[address(msg.sender)] >= balanceOf[address(ext_call.return_data[0])]
        balanceOf[address(ext_call.return_data[0])] += balanceOf[address(msg.sender)]
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, address(ext_call.return_data[0]));
        call msg.sender with:
           value ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0x9ff0d24b: (ext_call.return_data[0] * sub_bb8d6b1d[address(msg.sender)].field_768 / 10^decimals), msg.sender
}



}
