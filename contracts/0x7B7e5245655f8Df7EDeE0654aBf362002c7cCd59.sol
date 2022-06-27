contract main {


// =======================  Init code  ======================


uint128 stor3; offset 160
address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor8;
array of uint256 stor9;
array of uint256 stor10;

function _fallback() payable {
    Mask(96, 0, stor3.field_160) = 0
    stor4 = 0
    stor5 = 0
    stor8 = 0
    bool(stor9.length) = 0
    stor9.length.field_1 = 4
    stor9.length.field_8 = 'PYBA' / 256
    idx = 0
    while stor9.length + 31 / 32 > idx:
        stor9[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor10.length) = 0
    stor10.length.field_1 = 11
    stor10.length.field_8 = 'PaiyuanbaoA' / 256
    idx = 0
    while stor10.length + 31 / 32 > idx:
        stor10[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor3.field_0) = msg.sender
    require not msg.value
    return code.data[502 len 14289]
}



// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
uint256 multiplierPercent;
uint256 currentAirdrop;
uint256 undropped;
mapping of uint256 airdropped;
uint8 stor8;
array of uint256 symbol;
array of uint256 name;
uint8 stor11; offset 160
uint128 stor11; offset 160
address stor11;

function currentAirdrop() {
    return currentAirdrop
}

function mintingFinished() {
    return bool(stor8)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function airdropped(address arg1) {
    return airdropped[arg1]
}

function transferEnabled() {
    return bool(uint8(stor11.field_160))
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function undropped() {
    return undropped
}

function multiplierPercent() {
    return multiplierPercent
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
  stop
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function setFounder(address arg1) {
    require msg.sender == owner
    address(stor11.field_0) = arg1
}

function setTransferEnabled(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor11.field_160) = Mask(96, 0, arg1)
}

function finishMinting() {
    require msg.sender == owner
    require not stor8
    stor8 = 1
    emit MintFinished()
    return 1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function reclaimContract(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function finishAirdrop() {
    require not undropped
    multiplierPercent = 0
    emit AirdropComplete(currentAirdrop);
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 0
}

function airdropAmount(uint256 arg1) {
    require multiplierPercent > 0
    if not multiplierPercent:
        return 0
    require multiplierPercent
    require multiplierPercent * arg1 / multiplierPercent == arg1
    return (multiplierPercent * arg1 / 100)
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor8
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function reclaimToken(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor11.field_160):
        if address(stor11.field_0) != msg.sender:
            require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function startAirdrop(uint256 arg1) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    require not multiplierPercent
    require arg1 > 100
    require currentAirdrop + 1 >= currentAirdrop
    currentAirdrop++
    multiplierPercent = arg1
    undropped = totalSupply
    require multiplierPercent
    require multiplierPercent
    require multiplierPercent * undropped / multiplierPercent == undropped
    require multiplierPercent * undropped > 0
    emit AirdropStart(multiplierPercent, currentAirdrop);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor11.field_160):
        if address(stor11.field_0) != msg.sender:
            require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approve(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not uint8(stor3.field_160)
    require arg1 != this.address
    allowance[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function increaseApproval(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not uint8(stor3.field_160)
    require arg1 != this.address
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = allowance[address(msg.sender)][address(arg1)]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function decreaseApproval(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not uint8(stor3.field_160)
    require arg1 != this.address
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    mem[ceil32(arg3.length) + 128] = allowance[address(msg.sender)][address(arg1)]
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if not uint8(stor11.field_160):
        if address(stor11.field_0) != msg.sender:
            require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg1 != this.address
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Transfer(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    if not uint8(stor11.field_160):
        if address(stor11.field_0) != msg.sender:
            require msg.sender == owner
    require not uint8(stor3.field_160)
    require arg2 != this.address
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    mem[ceil32(arg4.length) + 128] = arg3
    emit Transfer(arg3, arg1, arg2);
    mem[ceil32(arg4.length) + 128 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg4.length) + 132 len arg4.length - 4]
    else:
        mem[floor32(arg4.length) + ceil32(arg4.length) + 128] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
        call arg2.mem[ceil32(arg4.length) + 128 len 4] with:
             gas gas_remaining - 25710 wei
            args mem[ceil32(arg4.length) + 132 len floor32(arg4.length) + 28]
    require ext_call.success
    return 1
}

function drop(address[] arg1) {
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        if airdropped[address(cd[((32 * idx) + arg1 + 36)])] == currentAirdrop:
            s = s
            t = t
            u = address(cd[((32 * idx) + arg1 + 36)])
            idx = idx + 1
            continue 
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] <= undropped
        undropped -= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require multiplierPercent > 0
        if not multiplierPercent:
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = 0
        else:
            require multiplierPercent
            require multiplierPercent * balanceOf[address(cd[((32 * idx) + arg1 + 36)])] / multiplierPercent == balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
            balanceOf[address(cd[((32 * idx) + arg1 + 36)])] = multiplierPercent * balanceOf[address(cd[((32 * idx) + arg1 + 36)])] / 100
        require balanceOf[address(cd[((32 * idx) + arg1 + 36)])] <= balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        require totalSupply >= totalSupply
        mem[96] = 0
        emit Transfer(0, 0, address(cd[((32 * idx) + arg1 + 36)]));
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 7
        airdropped[address(cd[((32 * idx) + arg1 + 36)])] = currentAirdrop
        s = 0
        t = balanceOf[address(cd[((32 * idx) + arg1 + 36)])]
        u = address(cd[((32 * idx) + arg1 + 36)])
        idx = idx + 1
        continue 
    return 0
}



}
