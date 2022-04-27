contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    stor20 = -1
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor2 = code.data[12211 len 20]
    stor4 = code.data[12243 len 20]
    stor3 = code.data[12275 len 20]
    stor5 = sha3('Gold')
    stor6 = sha3('Wood')
    stor7 = sha3('Stone')
    return code.data[338 len 11861]
}



// =====================  Runtime code  =====================


#
#  - sub_dc341d8d(?)
#
uint8 stor0; offset 160
address owner;
uint256 stor1;
uint32 stor2;
address sub_0258a643Address;
uint32 stor3;
address sub_ed8faf3dAddress;
uint32 stor4;
address sub_40d7f8c0Address;
uint256 sub_8764d2e2;
uint256 sub_a00fedc7;
uint256 sub_7f1c5886;
mapping of uint256 sub_7621bd09;
mapping of address sub_c73dedfd;
mapping of uint256 sub_61508bfd;
mapping of address highestBidder;
array of uint256 sub_82768573;
mapping of uint256 sub_093556c9;
mapping of uint256 balances;
uint256 totalBalance;
array of uint256 auctions;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;

function sub_0258a643(?) {
    return address(sub_0258a643Address)
}

function sub_093556c9(?) {
    return sub_093556c9[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_40d7f8c0(?) {
    return address(sub_40d7f8c0Address)
}

function auctions(uint256 arg1) {
    require arg1 < auctions.length
    return auctions[arg1]
}

function paused() {
    return bool(stor0)
}

function sub_61508bfd(?) {
    return sub_61508bfd[arg1]
}

function sub_7621bd09(?) {
    return sub_7621bd09[arg1]
}

function sub_7f1c5886(?) {
    return sub_7f1c5886
}

function sub_82768573(?) {
    return sub_82768573[address(arg1)]
}

function sub_8764d2e2(?) {
    return sub_8764d2e2
}

function owner() {
    return owner
}

function sub_a00fedc7(?) {
    return sub_a00fedc7
}

function totalBalance() {
    return totalBalance
}

function userAuctions(address arg1, uint256 arg2) {
    require arg2 < sub_82768573[arg1]
    return sub_82768573[arg1][arg2]
}

function highestBidder(bytes32 arg1) {
    return highestBidder[arg1]
}

function sub_c73dedfd(?) {
    return sub_c73dedfd[arg1]
}

function sub_c9c0c242(?) {
    return sub_093556c9[arg1][arg2]
}

function getAuctionsLength() {
    return auctions.length
}

function sub_ed8faf3d(?) {
    return address(sub_ed8faf3dAddress)
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawExcess(address arg1) {
    require owner == msg.sender
    require totalBalance <= eth.balance(this.address)
    call arg1 with:
       value eth.balance(this.address) - totalBalance wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function startMinting() {
    require owner == msg.sender
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0xd87f3856 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address)
    require delegate.return_code
}

function sub_10cfcf0c(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x3f0a6f3d with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_468c7804(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x1777d529 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_48d79c6f(?) {
    require ext_code.size(0x902904b1833def4aef05b99cea93cc3383cd2d4a)
    delegate 0x902904b1833def4aef05b99cea93cc3383cd2d4a.0xf5807181 with:
         gas gas_remaining - 710 wei
        args address(sub_40d7f8c0Address)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_d5ee9ca4(?) {
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0xf5807181 with:
         gas gas_remaining - 710 wei
        args address(sub_ed8faf3dAddress)
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_f5807181(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x6dff11 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_245454b5(?) {
    require ext_code.size(0x902904b1833def4aef05b99cea93cc3383cd2d4a)
    delegate 0x902904b1833def4aef05b99cea93cc3383cd2d4a.0xed05582b with:
         gas gas_remaining - 710 wei
        args address(sub_40d7f8c0Address), arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_cb551a2b(?) {
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0xed05582b with:
         gas gas_remaining - 710 wei
        args address(sub_ed8faf3dAddress), arg1
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_c756b8e9(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0xfd1fd5ff with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1, arg2
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_78a11bf0(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x54c711ba with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), address(arg1), arg2
    require delegate.return_code
    return delegate.return_data[0]
}

function sub_98a84292(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x4e49bbe1 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1, arg2
    require delegate.return_code
    return delegate.return_data[0], delegate.return_data[32]
}

function sub_66cfc337(?) {
    require ext_code.size(0x902904b1833def4aef05b99cea93cc3383cd2d4a)
    delegate 0x902904b1833def4aef05b99cea93cc3383cd2d4a.0xfc85a0d2 with:
         gas gas_remaining - 710 wei
        args address(sub_40d7f8c0Address), arg1
    require delegate.return_code
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64]
}

function sub_7bbe0176(?) {
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0xfc85a0d2 with:
         gas gas_remaining - 710 wei
        args address(sub_ed8faf3dAddress), arg1
    require delegate.return_code
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64]
}

function sub_8ca25ab4(?) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x58e9eb78 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    return delegate.return_data[0], delegate.return_data[32], delegate.return_data[64]
}

function sub_2516930f(?) {
    require owner == msg.sender
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0xf481d125 with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor3), sha3(msg.sender, arg1, stor1), Mask(128, 128, arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8
    require delegate.return_code
    emit 0xc419dae1: sha3(msg.sender, arg1, stor1)
    stor1++
}

function sub_974f1e9e(?) {
    require owner == msg.sender
    require ext_code.size(0x902904b1833def4aef05b99cea93cc3383cd2d4a)
    delegate 0x902904b1833def4aef05b99cea93cc3383cd2d4a.0x93fdc929 with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), sha3(msg.sender, arg1, stor1), Mask(128, 128, arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8
    require delegate.return_code
    emit 0xa543a0fd: sha3(msg.sender, arg1, stor1)
    stor1++
}

function sub_66760ce6(?) {
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0x9d3bd2e4 with:
         gas gas_remaining - 710 wei
        args address(sub_ed8faf3dAddress), arg1
    require delegate.return_code
    return Mask(128, 128, delegate.return_data[0]), 
           delegate.return_data[32],
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128]
}

function sub_7e403f26(?) {
    require ext_code.size(0x902904b1833def4aef05b99cea93cc3383cd2d4a)
    delegate 0x902904b1833def4aef05b99cea93cc3383cd2d4a.0x2a33569e with:
         gas gas_remaining - 710 wei
        args address(sub_40d7f8c0Address), arg1
    require delegate.return_code
    return Mask(128, 128, delegate.return_data[0]), 
           delegate.return_data[32],
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128]
}

function getFortress(bytes32 arg1) {
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0xd041e57 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    return Mask(128, 128, delegate.return_data[0]), 
           address(delegate.return_data[32]),
           delegate.return_data[64],
           delegate.return_data[96],
           delegate.return_data[128]
}

function withdraw(bytes32 arg1) {
    require not stor0
    require sub_7621bd09[arg1] <= block.timestamp
    require highestBidder[arg1] != msg.sender
    sub_093556c9[arg1][msg.sender] = 0
    require sub_093556c9[arg1][msg.sender] <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= sub_093556c9[arg1][msg.sender]
    require sub_093556c9[arg1][msg.sender] <= totalBalance
    totalBalance -= sub_093556c9[arg1][msg.sender]
    call msg.sender with:
       value sub_093556c9[arg1][msg.sender] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFortress(bytes32 arg1, address arg2) {
    require not stor0
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x69c5b2b8 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    require delegate.return_data[12 len 20] == msg.sender
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0xb844ad67 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1, arg2
    require delegate.return_code
}

function sub_e82acd26(?) {
    require owner == msg.sender
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x99a88ec4 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0x99a88ec4 with:
         gas gas_remaining - 710 wei
        args address(sub_ed8faf3dAddress), arg1
    require delegate.return_code
    require ext_code.size(0x902904b1833def4aef05b99cea93cc3383cd2d4a)
    delegate 0x902904b1833def4aef05b99cea93cc3383cd2d4a.0x99a88ec4 with:
         gas gas_remaining - 710 wei
        args address(sub_40d7f8c0Address), arg1
    require delegate.return_code
}

function endAuction(bytes32 arg1) {
    require not stor0
    require sub_7621bd09[arg1] <= block.timestamp
    require highestBidder[arg1] == msg.sender
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.setOwner(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1, msg.sender
    require delegate.return_code
    require sub_61508bfd[arg1] <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= sub_61508bfd[arg1]
    sub_093556c9[arg1][msg.sender] = 0
    require sub_61508bfd[arg1] + sub_093556c9[arg1][stor9[arg1]] >= sub_093556c9[arg1][stor9[arg1]]
    sub_093556c9[arg1][stor9[arg1]] += sub_61508bfd[arg1]
    require sub_61508bfd[arg1] + balances[stor9[arg1]] >= balances[stor9[arg1]]
    balances[stor9[arg1]] += sub_61508bfd[arg1]
}

function sub_5096ec53(?) payable {
    require not stor0
    require msg.value >= 10^16
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0xbd1fb981 with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor2), sha3(msg.sender, arg1, stor1), Mask(128, 128, arg1), stor17, stor18, 200, 400, 500, 0, msg.sender
    require delegate.return_code
    if stor17 == stor18:
        stor19 = -stor20
        stor20 = stor19
    else:
        if stor17 >= 0:
            if stor17 > 0:
                if stor17 == -stor18 + 1:
                    stor19 = -stor20
                    stor20 = stor19
        else:
            if stor17 == -stor18:
                stor19 = -stor20
                stor20 = stor19
            else:
                if stor17 > 0:
                    if stor17 == -stor18 + 1:
                        stor19 = -stor20
                        stor20 = stor19
    stor17 += stor19
    stor18 += stor20
    emit 0x39152486: Mask(128, 128, arg1), sha3(msg.sender, arg1, stor1), msg.sender, stor17, stor18
    stor1++
}

function startAuction(bytes32 arg1) {
    require not stor0
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x69c5b2b8 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    require delegate.return_data[12 len 20] == msg.sender
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.setOwner(address rg1, bytes32 rg2, address rg3) with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1, this.address
    require delegate.return_code
    highestBidder[arg1] = msg.sender
    sub_61508bfd[arg1] = 0
    sub_c73dedfd[arg1] = msg.sender
    sub_7621bd09[arg1] = block.timestamp + (72 * 24 * 3600)
    sub_82768573[address(msg.sender)]++
    if not sub_82768573[address(msg.sender)] <= sub_82768573[address(msg.sender)] + 1:
        idx = sub_82768573[address(msg.sender)] + 1
        while sub_82768573[address(msg.sender)] > idx:
            sub_82768573[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    sub_82768573[address(msg.sender)][sub_82768573[address(msg.sender)]] = arg1
    auctions.length++
    if not auctions.length <= auctions.length + 1:
        idx = auctions.length + 1
        while auctions.length > idx:
            auctions[idx] = 0
            idx = idx + 1
            continue 
    auctions[auctions.length] = arg1
}

function sub_cacb7ad8(?) payable {
    require not stor0
    require block.timestamp < sub_7621bd09[arg1]
    require 72 * 24 * 3600 <= sub_7621bd09[arg1]
    require block.timestamp > sub_7621bd09[arg1] - (72 * 24 * 3600)
    if not msg.value / 100:
        require 0 <= msg.value
        if not sub_093556c9[arg1][msg.sender]:
            sub_82768573[address(msg.sender)]++
            if not sub_82768573[address(msg.sender)] <= sub_82768573[address(msg.sender)] + 1:
                idx = sub_82768573[address(msg.sender)] + 1
                while sub_82768573[address(msg.sender)] > idx:
                    sub_82768573[address(msg.sender)][idx] = 0
                    idx = idx + 1
                    continue 
            sub_82768573[address(msg.sender)][sub_82768573[address(msg.sender)]] = arg1
        require msg.value + sub_093556c9[arg1][msg.sender] >= sub_093556c9[arg1][msg.sender]
        sub_093556c9[arg1][msg.sender] += msg.value
        require msg.value + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] += msg.value
        require msg.value + totalBalance >= totalBalance
        totalBalance += msg.value
    else:
        require msg.value / 100 / msg.value / 100 == 1
        require msg.value / 100 <= msg.value
        if not sub_093556c9[arg1][msg.sender]:
            sub_82768573[address(msg.sender)]++
            if not sub_82768573[address(msg.sender)] <= sub_82768573[address(msg.sender)] + 1:
                idx = sub_82768573[address(msg.sender)] + 1
                while sub_82768573[address(msg.sender)] > idx:
                    sub_82768573[address(msg.sender)][idx] = 0
                    idx = idx + 1
                    continue 
            sub_82768573[address(msg.sender)][sub_82768573[address(msg.sender)]] = arg1
        require msg.value - (msg.value / 100) + sub_093556c9[arg1][msg.sender] >= sub_093556c9[arg1][msg.sender]
        sub_093556c9[arg1][msg.sender] = msg.value - (msg.value / 100) + sub_093556c9[arg1][msg.sender]
        require msg.value - (msg.value / 100) + balances[address(msg.sender)] >= balances[address(msg.sender)]
        balances[address(msg.sender)] = msg.value - (msg.value / 100) + balances[address(msg.sender)]
        require msg.value - (msg.value / 100) + totalBalance >= totalBalance
        totalBalance = msg.value - (msg.value / 100) + totalBalance
    require sub_61508bfd[arg1] + 10^16 >= sub_61508bfd[arg1]
    if sub_093556c9[arg1][msg.sender] >= sub_61508bfd[arg1] + 10^16:
        sub_61508bfd[arg1] = sub_093556c9[arg1][msg.sender]
        highestBidder[arg1] = msg.sender
}

function sub_30b654f8(?) {
    require not stor0
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x69c5b2b8 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    require delegate.return_data[12 len 20] == msg.sender
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x58e9eb78 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1
    require delegate.return_code
    require ext_code.size(0xb939a1d96dda7271d6d89eaceabd9163d0502165)
    delegate 0xb939a1d96dda7271d6d89eaceabd9163d0502165.0xfc85a0d2 with:
         gas gas_remaining - 710 wei
        args address(sub_ed8faf3dAddress), arg2
    require delegate.return_code
    require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
    delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x4e49bbe1 with:
         gas gas_remaining - 710 wei
        args address(sub_0258a643Address), arg1, arg2
    require delegate.return_code
    require delegate.return_data[0] + 1 >= delegate.return_data[0]
    if not delegate.return_data[0]:
        if not delegate.return_data[32]:
            if not delegate.return_data[64]:
                require delegate.return_data[0] >= 0
                require delegate.return_data[32] >= 0
                require delegate.return_data[64] >= 0
                require 0 <= delegate.return_data[0]
                require 0 <= delegate.return_data[32]
                require 0 <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, delegate.return_data[28 len 4], delegate.return_data[32], delegate.return_data[64], delegate.return_data[0] + 1
            else:
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) / delegate.return_data[64] == delegate.return_data[0] + 1
                require delegate.return_data[0] >= 0
                require delegate.return_data[32] >= 0
                require delegate.return_data[64] >= delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64])
                require 0 <= delegate.return_data[0]
                require 0 <= delegate.return_data[32]
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, delegate.return_data[28 len 4], delegate.return_data[32], -1 * delegate.return_data[0] * delegate.return_data[64], delegate.return_data[0] + 1
        else:
            require delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32]) / delegate.return_data[32] == delegate.return_data[0] + 1
            if not delegate.return_data[64]:
                require delegate.return_data[0] >= 0
                require delegate.return_data[32] >= delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32])
                require delegate.return_data[64] >= 0
                require 0 <= delegate.return_data[0]
                require delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32]) <= delegate.return_data[32]
                require 0 <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, delegate.return_data[28 len 4], -1 * delegate.return_data[0] * delegate.return_data[32], delegate.return_data[64], delegate.return_data[0] + 1
            else:
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) / delegate.return_data[64] == delegate.return_data[0] + 1
                require delegate.return_data[0] >= 0
                require delegate.return_data[32] >= delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32])
                require delegate.return_data[64] >= delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64])
                require 0 <= delegate.return_data[0]
                require delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32]) <= delegate.return_data[32]
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, delegate.return_data[28 len 4], -1 * delegate.return_data[0] * delegate.return_data[32], -1 * delegate.return_data[0] * delegate.return_data[64], delegate.return_data[0] + 1
    else:
        require delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0]) / delegate.return_data[0] == delegate.return_data[0] + 1
        if not delegate.return_data[32]:
            if not delegate.return_data[64]:
                require delegate.return_data[0] >= delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0])
                require delegate.return_data[32] >= 0
                require delegate.return_data[64] >= 0
                require delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0]) <= delegate.return_data[0]
                require 0 <= delegate.return_data[32]
                require 0 <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, uint32(-1 * delegate.return_data[0] * delegate.return_data[0]), delegate.return_data[32], delegate.return_data[64], delegate.return_data[0] + 1
            else:
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) / delegate.return_data[64] == delegate.return_data[0] + 1
                require delegate.return_data[0] >= delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0])
                require delegate.return_data[32] >= 0
                require delegate.return_data[64] >= delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64])
                require delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0]) <= delegate.return_data[0]
                require 0 <= delegate.return_data[32]
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, uint32(-1 * delegate.return_data[0] * delegate.return_data[0]), delegate.return_data[32], -1 * delegate.return_data[0] * delegate.return_data[64], delegate.return_data[0] + 1
        else:
            require delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32]) / delegate.return_data[32] == delegate.return_data[0] + 1
            if not delegate.return_data[64]:
                require delegate.return_data[0] >= delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0])
                require delegate.return_data[32] >= delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32])
                require delegate.return_data[64] >= 0
                require delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0]) <= delegate.return_data[0]
                require delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32]) <= delegate.return_data[32]
                require 0 <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, uint32(-1 * delegate.return_data[0] * delegate.return_data[0]), -1 * delegate.return_data[0] * delegate.return_data[32], delegate.return_data[64], delegate.return_data[0] + 1
            else:
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) / delegate.return_data[64] == delegate.return_data[0] + 1
                require delegate.return_data[0] >= delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0])
                require delegate.return_data[32] >= delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32])
                require delegate.return_data[64] >= delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64])
                require delegate.return_data[0] + (delegate.return_data[0] * delegate.return_data[0]) <= delegate.return_data[0]
                require delegate.return_data[32] + (delegate.return_data[0] * delegate.return_data[32]) <= delegate.return_data[32]
                require delegate.return_data[64] + (delegate.return_data[0] * delegate.return_data[64]) <= delegate.return_data[64]
                require ext_code.size(0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a)
                delegate 0xe5ef9a283508bbfd11d5379efc4146a4e4a26b8a.0x7b2be003 with:
                     gas gas_remaining - 710 wei
                    args 0, delegate.return_data[32], 0, 0, uint32(-1 * delegate.return_data[0] * delegate.return_data[0]), -1 * delegate.return_data[0] * delegate.return_data[32], -1 * delegate.return_data[0] * delegate.return_data[64], delegate.return_data[0] + 1
    require delegate.return_code
    emit 0x9303befd: arg1, arg2
}



}
