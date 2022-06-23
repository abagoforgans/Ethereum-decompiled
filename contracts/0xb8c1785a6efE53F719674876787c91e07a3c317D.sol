contract main {




// =====================  Runtime code  =====================


const decimals = 0

const version = 2000


address owner;
array of uint256 name;
array of uint256 symbol;
uint32 stor3;
address baseCurrencyAddress;
mapping of uint256 allowance;
uint256 cap;
uint256 goal;
uint256 start;
uint256 end;
uint256 sub_bf58b148;
uint8 sub_04954839;
uint8 stor14; offset 8
uint8 sub_c6bc3508; offset 16
uint8 isMintingPaused; offset 24
address sub_17d06700Address;
address sub_1fc6fd02Address;
address sub_0a079767Address;
address sub_d890a870Address;
uint256 sub_fbb20e9a;
address sub_9f8303a8Address;

function sub_04954839(?) {
    return bool(sub_04954839)
}

function name() {
    return name[0 len name.length]
}

function sub_0a079767(?) {
    return sub_0a079767Address
}

function sub_17d06700(?) {
    return sub_17d06700Address
}

function sub_1fc6fd02(?) {
    return sub_1fc6fd02Address
}

function isMintingPaused() {
    return bool(isMintingPaused)
}

function getCap() {
    return cap
}

function owner() {
    return owner
}

function baseCurrency() {
    return address(baseCurrencyAddress)
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getEnd() {
    return end
}

function sub_9f8303a8(?) {
    return sub_9f8303a8Address
}

function getGoal() {
    return goal
}

function sub_bf58b148(?) {
    return sub_bf58b148
}

function getStart() {
    return start
}

function sub_c6bc3508(?) {
    return bool(sub_c6bc3508)
}

function sub_d890a870(?) {
    return sub_d890a870Address
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_fbb20e9a(?) {
    return sub_fbb20e9a
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_b7f06ca9(?) {
    return not bool(stor14)
}

function getLimits() {
    return cap, goal, start, end
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c3efff50(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_d890a870Address = arg1
}

function sub_519a66b1(?) {
    require calldata.size - 4 >= 32
    if sub_9f8303a8Address != msg.sender:
        revert with 0, 'permission'
    sub_9f8303a8Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimDividendAll() {
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xe788babd with:
         gas gas_remaining wei
        args 4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4987b3e0(?) {
    require calldata.size - 4 >= 32
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'owner only'
        if sub_04954839:
            revert with 0, 'alive'
        if sub_c6bc3508:
            revert with 0, 'finished'
    sub_9f8303a8Address = arg1
}

function getControllerAddress() {
    require ext_code.size(sub_d890a870Address)
    staticcall sub_d890a870Address.0xc57380a2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_33246479(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x937d21ba with:
         gas gas_remaining wei
        args 4, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function claimDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x8a78acf5 with:
         gas gas_remaining wei
        args 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function totalSupply() {
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x2648c6ac with:
         gas gas_remaining wei
        args 4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function depositDividend() payable {
    require msg.sender == owner
    if not sub_04954839:
        revert with 0, 'not alive'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xc7872b63 with:
         gas gas_remaining wei
        args 4, msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2256de06(?) {
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only owner'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xb35fbc1d with:
         gas gas_remaining wei
        args 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_742c1709(?) {
    require calldata.size - 4 >= 32
    if sub_17d06700Address != msg.sender:
        revert with 0, 'pauseCtrl'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.'EgI.' with:
         gas gas_remaining wei
        args 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x8b2ea6c3 with:
         gas gas_remaining wei
        args 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function totalSupplyAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x7420bd40 with:
         gas gas_remaining wei
        args 4, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function pauseTransfer(bool arg1) {
    require calldata.size - 4 >= 32
    if sub_17d06700Address != msg.sender:
        revert with 0, 'pauseCtrl'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x1deaeb61 with:
         gas gas_remaining wei
        args 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOfAt(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x13120504 with:
         gas gas_remaining wei
        args 4, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x6bb71549 with:
         gas gas_remaining wei
        args 4, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_874c686a(?) {
    if sub_9f8303a8Address != msg.sender:
        revert with 0, 'permission'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x81b8b6b5 with:
         gas gas_remaining wei
        args 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function rescueToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if sub_1fc6fd02Address != msg.sender:
        revert with 0, 'rescueCtrl'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x7a1fe163 with:
         gas gas_remaining wei
        args 14, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x9e3cfd77 with:
         gas gas_remaining wei
        args 4, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x5dc6c24a with:
         gas gas_remaining wei
        args 4, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function enableTransfers(bool arg1) {
    require calldata.size - 4 >= 32
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only owner'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x1deaeb61 with:
         gas gas_remaining wei
        args 14, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_03dc27ce(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not sub_04954839:
        revert with 0, 'not alive'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x2066d8bc with:
         gas gas_remaining wei
        args 0, 4, address(arg1), arg2, address(baseCurrencyAddress)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function finishMinting() {
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only owner'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x5be6b00c with:
         gas gas_remaining wei
        args 14
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_bb3667eb(?) {
    require calldata.size - 4 >= 32
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'owner only'
        if sub_04954839:
            revert with 0, 'alive'
        if sub_c6bc3508:
            revert with 0, 'finished'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x576c28cf with:
         gas gas_remaining wei
        args 15, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f6072a10(?) {
    require calldata.size - 4 >= 64
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'owner only'
        if sub_04954839:
            revert with 0, 'alive'
        if sub_c6bc3508:
            revert with 0, 'finished'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xe2c9448c with:
         gas gas_remaining wei
        args 15, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function recycleDividend(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x2648c6ac with:
         gas gas_remaining wei
        args 4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x13b0b455 with:
         gas gas_remaining wei
        args 0, 4, arg1, sub_fbb20e9a, delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if msg.sender == sub_9f8303a8Address:
        require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
        delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xb9f5e0d8 with:
             gas gas_remaining wei
            args 0, 4, 14, address(arg1), arg2, arg3, 1
    else:
        if not stor14:
            revert with 0, 'paused'
        require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
        delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xafee2b5a with:
             gas gas_remaining wei
            args 0, 4, 14, address(arg1), arg2, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_d890a870Address)
    staticcall sub_d890a870Address.0xc57380a2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8de05db5 with:
         gas gas_remaining wei
        args 0, uint32(stor3), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor14:
        revert with 0, 'paused'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0xb9f654b3 with:
         gas gas_remaining wei
        args 0, 4, 14, msg.sender, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if sub_9f8303a8Address != msg.sender:
        if sub_0a079767Address != msg.sender:
            revert with 0, 'canMint'
        if not sub_04954839:
            revert with 0, 'canMint'
        if sub_c6bc3508:
            revert with 0, 'canMint'
        if isMintingPaused:
            revert with 0, 'canMint'
        if sub_9f8303a8Address != msg.sender:
            if sub_0a079767Address != msg.sender:
                revert with 0, 'canMint'
            if not sub_04954839:
                revert with 0, 'canMint'
            if sub_c6bc3508:
                revert with 0, 'canMint'
            if isMintingPaused:
                revert with 0, 'canMint'
    require ext_code.size(0xa25215718889f874ca9a3b17e5470b35ae2afdba)
    delegate 0xa25215718889f874ca9a3b17e5470b35ae2afdba.0x1c049b with:
         gas gas_remaining wei
        args 4, address(arg1), arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(delegate.return_data[0])
}

function sub_ee7ac1ce(?) {
    require calldata.size - 4 >= 224
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if sub_9f8303a8Address != msg.sender:
        if owner != msg.sender:
            revert with 0, 'owner only'
        if sub_04954839:
            revert with 0, 'alive'
        if sub_c6bc3508:
            revert with 0, 'finished'
    if cd[100] < cd[132]:
        revert with 0, 'cap higher goal'
    name.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
    symbol.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        symbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while symbol.length + 31 / 32 > idx:
        symbol[idx] = 0
        idx = idx + 1
        continue 
    address(baseCurrencyAddress) = address(cd[68])
    cap = cd[100]
    goal = cd[132]
    start = cd[164]
    end = cd[196]
    mem[ceil32(('cd', 4).length) + 288] = ('cd', 36).length
    mem[ceil32(('cd', 4).length) + 320 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
    mem[('cd', 36).length + ceil32(('cd', 4).length) + 320] = 0
    emit 0x5567348f: 160, ceil32(('cd', 4).length) + 192, address(cd[68]), cd[100], cd[132], ('cd', 4).length, call.data[cd[4] + 36 len ('cd', 4).length], 0, mem[('cd', 4).length + 320 len ceil32(('cd', 4).length) - ('cd', 4).length], call.data[cd[36] + 36 len ('cd', 36).length], mem[ceil32(('cd', 4).length) + ('cd', 36).length + 320 len ceil32(('cd', 36).length) - ('cd', 36).length], msg.sender
}



}
