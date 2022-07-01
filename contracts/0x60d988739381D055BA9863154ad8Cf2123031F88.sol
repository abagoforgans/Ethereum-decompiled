contract main {




// =====================  Runtime code  =====================


const getall = eth.balance(this.address)


array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
uint256 buyPrice;
uint256 sub_79931772;
uint8 stor6;
uint256 sub_afcf28cd;
uint256 sub_6ee7578a;
uint256 sub_443e031b;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor12;
mapping of address fromaddr;
mapping of uint8 stor14;
mapping of uint256 sub_936f73c6;
array of uint256 sub_60cb613e;
mapping of uint256 sub_6a3c6067;
mapping of uint256 stor18;
address sub_aec2e821Address;
address owner;
address sub_cd581cb2Address;
mapping of struct sub_a8b4515c;
mapping of struct plans;
mapping of struct sub_27d01317;
uint256 per;
uint256 sub_21ed6243;
mapping of uint8 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
mapping of uint8 stor33;
mapping of uint256 sub_4e9723bc;
mapping of uint256 sub_8aa72433;
array of address sub_a36e6577;
address sub_cede67cbAddress;
uint256 sub_2a699f2c;
uint256 stor39;
uint256 stor40;
mapping of address sub_5087399b;
array of address stor56459948693323644898937646006184091555812749125396784253147221160512369864388;
uint256 storF36D;

function sub_0193712d(?) {
    require arg1 > 0
    require arg1 <= 16
    return uint256(sub_27d01317[arg1].field_0), uint256(sub_27d01317[arg1].field_256)
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_21ed6243(?) {
    return sub_21ed6243
}

function getPlan(uint256 arg1) {
    require arg1 > 0
    require arg1 <= 4
    return uint256(plans[arg1].field_0), uint256(plans[arg1].field_256)
}

function sub_27d01317(?) {
    return uint256(sub_27d01317[arg1].field_0), uint256(sub_27d01317[arg1].field_256)
}

function sub_2a699f2c(?) {
    return sub_2a699f2c
}

function decimals() {
    return decimals
}

function admins(address arg1) {
    return bool(stor14[arg1])
}

function sub_443e031b(?) {
    return sub_443e031b
}

function fromaddr(address arg1) {
    return fromaddr[arg1]
}

function sub_4e9723bc(?) {
    return sub_4e9723bc[arg1]
}

function sub_5087399b(?) {
    return sub_5087399b[arg1]
}

function sub_60cb613e(?) {
    require arg1 < sub_60cb613e.length
    return uint256(sub_60cb613e[arg1].field_0)
}

function sub_6a3c6067(?) {
    return sub_6a3c6067[arg1]
}

function sub_6ee7578a(?) {
    return sub_6ee7578a
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_79931772(?) {
    return sub_79931772
}

function per() {
    return per
}

function buyPrice() {
    return buyPrice
}

function sub_8aa72433(?) {
    return sub_8aa72433[arg1]
}

function owner() {
    return owner
}

function sub_936f73c6(?) {
    return sub_936f73c6[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a36e6577(?) {
    require arg1 < sub_a36e6577.length
    return sub_a36e6577[arg1]
}

function sub_a8b4515c(?) {
    return uint256(sub_a8b4515c[arg1].field_0), 
           uint256(sub_a8b4515c[arg1].field_256),
           uint256(sub_a8b4515c[arg1].field_512),
           uint256(sub_a8b4515c[arg1].field_768),
           uint256(sub_a8b4515c[arg1].field_1024),
           uint256(sub_a8b4515c[arg1].field_1280)
}

function sub_aec2e821(?) {
    return sub_aec2e821Address
}

function sub_afcf28cd(?) {
    return sub_afcf28cd
}

function plans(uint256 arg1) {
    return uint256(plans[arg1].field_0), uint256(plans[arg1].field_256)
}

function frozenAccount(address arg1) {
    return bool(stor12[arg1])
}

function sub_c0cd88b8(?) {
    return bool(stor33[arg1])
}

function sub_cd581cb2(?) {
    return sub_cd581cb2Address
}

function sub_cede67cb(?) {
    return sub_cede67cbAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function actived() {
    return bool(stor6)
}

function getfrom(address arg1) {
    return fromaddr[address(arg1)]
}

function sub_875ee10a(?) {
    return stor28, stor29, stor30
}

function ethbalance(address arg1) {
    return eth.balance(arg1)
}

function getconf() {
    return per, sub_21ed6243, buyPrice, sub_2a699f2c
}

function sub_9a3b4167(?) {
    require msg.sender == owner
    return stor39, stor40
}

function setactive(bool arg1) {
    require msg.sender == owner
    stor6 = uint8(arg1)
}

function sub_03b0ec19(?) {
    require msg.sender == owner
    sub_cd581cb2Address = arg1
}

function getother() {
    return sub_21ed6243, buyPrice, sub_79931772, stor28, stor29, stor30
}

function setadmin(address arg1) {
    require msg.sender == owner
    require owner != arg1
    require arg1
    owner = arg1
}

function sub_fb50f5de(?) {
    require msg.sender == owner
    sub_79931772 = arg1
    stor28 = arg2
    stor29 = arg3
    stor30 = arg4
}

function sub_e4be47e7(?) {
    require balanceOf[this.address] <= totalSupply
    return totalSupply - balanceOf[this.address], sub_443e031b
}

function getaddtime(address arg1) {
    if 2 <= sub_936f73c6[address(arg1)]:
        return sub_936f73c6[address(arg1)]
    else:
        return 0
}

function sub_2157f9f0(?) {
    require msg.sender == owner
    require arg1
    require stor33[address(arg1)]
    stor33[address(arg1)] = 0
    return 1
}

function sub_a1ad3b49(?) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    sub_cede67cbAddress = arg1
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor12[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function hasReward(address arg1) {
    if block.timestamp - sub_21ed6243 < sub_936f73c6[address(arg1)]:
        return 0
    if not sub_936f73c6[address(arg1)]:
        return 0
    return 1
}

function sub_698705c8(?) {
    require msg.sender == owner
    require arg1 > 0
    require 0 < sub_2a699f2c
    per = arg1
    sub_21ed6243 = arg2
    buyPrice = arg3
    sub_2a699f2c = arg4
}

function sub_3d42c9fc(?) {
    require msg.sender == owner
    if arg2 <= 1:
        return 0
    if arg1 <= 1:
        return 0
    if arg1 > 16:
        return 0
    stor39 = arg1
    stor40 = arg2
    return 1
}

function addLeader(address arg1) {
    require msg.sender == owner
    require arg1
    require not stor33[address(arg1)]
    stor33[address(arg1)] = 1
    sub_a36e6577.length++
    stor7CD3[stor36.length] = arg1
    return 1
}

function sub_5ddc8cb5(?) {
    require msg.sender == owner
    require arg1 <= 4
    require arg1 >= 1
    require arg2 > 0
    require arg3 > 0
    uint256(plans[arg1].field_0) = arg2
    uint256(plans[arg1].field_256) = arg3
    return 1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 1
    require arg2 < totalSupply
    require arg2 <= balanceOf[msg.sender]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_cefea0a3(?) {
    require msg.sender == owner
    require arg1 >= 1
    require arg2 > 0
    require arg3 > 0
    require arg3 <= 100
    uint256(sub_27d01317[arg1].field_0) = arg2
    uint256(sub_27d01317[arg1].field_256) = arg3
    return 1
}

function sub_a76369f0(?) {
    require sub_cede67cbAddress
    require ext_code.size(sub_cede67cbAddress)
    call sub_cede67cbAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_4c03f36a(?) {
    if 0 >= uint256(sub_a8b4515c[address(arg1)].field_0):
        return 0
    require uint256(sub_a8b4515c[address(arg1)].field_1024) <= block.timestamp
    if block.timestamp - uint256(sub_a8b4515c[address(arg1)].field_1024) >= stor28:
        return (stor30 * uint256(sub_a8b4515c[address(arg1)].field_0) / 100)
    return (stor29 * uint256(sub_a8b4515c[address(arg1)].field_0) / 100)
}

function sub_39b79267(?) {
    require 0 < sub_60cb613e.length
    require 1 < sub_60cb613e.length
    require 2 < sub_60cb613e.length
    require 3 < sub_60cb613e.length
    return stor31, 
           stor32,
           sub_afcf28cd,
           sub_6ee7578a,
           uint256(sub_60cb613e.field_0),
           uint256(sub_60cb613e.field_256),
           uint256(sub_60cb613e.field_512),
           uint256(sub_60cb613e.field_768)
}

function adduser(address arg1, uint256 arg2) {
    require msg.sender == sub_cd581cb2Address
    require not stor12[address(arg1)]
    require 1 == bool(stor6)
    require arg2 < balanceOf[this.address]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 <= balanceOf[this.address]
    balanceOf[this.address] -= arg2
    emit Transfer(arg2, this.address, arg1);
}

function subuser(address arg1, uint256 arg2) {
    require msg.sender == sub_cd581cb2Address
    require not stor12[address(arg1)]
    require 1 == bool(stor6)
    require arg2 < balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += arg2
    emit Transfer(arg2, arg1, this.address);
}

function sub_b73480b9(?) {
    require msg.sender == owner
    stor31 = arg1
    stor32 = arg2
    sub_afcf28cd = arg3
    sub_6ee7578a = arg4
    mem[96] = arg5
    mem[128] = arg6
    mem[160] = arg7
    mem[192] = arg8
    sub_60cb613e.length = 4
    s = 0
    idx = 96
    while 224 > idx:
        uint256(sub_60cb613e[s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while sub_60cb613e.length > idx:
        uint256(sub_60cb613e[idx].field_0) = 0
        idx = idx + 1
        continue 
}

function sub_b5ccf1d9(?) {
    require stor6
    require arg1 > 0
    require arg1 <= balanceOf[msg.sender]
    require sub_cede67cbAddress
    require ext_code.size(sub_cede67cbAddress)
    call sub_cede67cbAddress.0xcfa860c3 with:
         gas gas_remaining wei
        args msg.sender, arg1 * sub_2a699f2c / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOf[msg.sender] -= arg1
    emit Transfer(arg1, msg.sender, this.address);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require 1 == bool(stor6)
    require not stor12[address(arg1)]
    require not stor12[address(arg2)]
    require arg3 > 1
    require arg3 < totalSupply
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require stor6
    require not stor12[msg.sender]
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    require msg.value * buyPrice / 10^18 < totalSupply
    require (msg.value * buyPrice / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * buyPrice / 10^18
    sub_443e031b += msg.value
    sub_8aa72433[address(msg.sender)] += msg.value
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    balanceOf[this.address] -= msg.value * buyPrice / 10^18
    if sub_5087399b[address(msg.sender)]:
        sub_4e9723bc[stor41[address(msg.sender)]] += msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer((msg.value * buyPrice / 10^18), this.address, msg.sender);
}

function sub_f906fcce(?) {
    require stor6
    require arg1 > 0
    require sub_cede67cbAddress
    require ext_code.size(sub_cede67cbAddress)
    call sub_cede67cbAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        return 0
    require sub_2a699f2c
    require ext_code.size(sub_cede67cbAddress)
    call sub_cede67cbAddress.0xed619eb8 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^18 * arg1 / sub_2a699f2c < balanceOf[this.address]
    balanceOf[msg.sender] += 10^18 * arg1 / sub_2a699f2c
    balanceOf[this.address] -= 10^18 * arg1 / sub_2a699f2c
    emit Transfer(arg1, this.address, msg.sender);
    return 1
}

function buy() payable {
    require msg.value > 0
    require stor6
    require not stor12[msg.sender]
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    require msg.value * buyPrice / 10^18 < totalSupply
    require (msg.value * buyPrice / 10^18) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * buyPrice / 10^18
    sub_443e031b += msg.value
    sub_8aa72433[address(msg.sender)] += msg.value
    require msg.value * buyPrice / 10^18 <= balanceOf[this.address]
    balanceOf[this.address] -= msg.value * buyPrice / 10^18
    if sub_5087399b[address(msg.sender)]:
        sub_4e9723bc[stor41[address(msg.sender)]] += msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer((msg.value * buyPrice / 10^18), this.address, msg.sender);
    return (msg.value * buyPrice / 10^18)
}

function subBalances(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 10
        balanceOf[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _36 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(_38), this.address);
        idx = idx + 1
        s = _36 + s
        continue 
    require (_36 * arg1.length) + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += _36 * arg1.length
}

function addBalances(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        require mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * idx) + 140 len 20]] >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[32] = 10
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        _36 = mem[(32 * arg1.length) + (32 * idx) + 160]
        require mem[(32 * arg1.length) + (32 * idx) + 160] + s >= s
        require idx < arg1.length
        _38 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg1.length) + 160], this.address, address(_38));
        idx = idx + 1
        s = _36 + s
        continue 
    require _36 * arg1.length <= balanceOf[this.address]
    balanceOf[this.address] += -1 * _36 * arg1.length
}

function sub_e297fd28(?) {
    idx = 0
    s = 0
    while idx < sub_a36e6577.length:
        mem[0] = sub_a36e6577[idx]
        mem[32] = 33
        if not stor33[stor36[idx]]:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    mem[96] = s
    if not s:
        mem[(32 * s) + 128] = s
    else:
        mem[128 len 32 * s] = code.data[16706 len 32 * s]
        mem[(32 * s) + 128] = s
        mem[(32 * s) + 160 len 32 * s] = code.data[16706 len 32 * s]
    idx = 0
    t = s
    while idx < sub_a36e6577.length:
        mem[0] = sub_a36e6577[idx]
        mem[32] = 33
        if not stor33[stor36[idx]]:
            idx = idx + 1
            t = t
            continue 
        require idx < sub_a36e6577.length
        require t - 1 < mem[96]
        mem[(32 * t - 1) + 128] = sub_a36e6577[idx]
        require idx < sub_a36e6577.length
        mem[0] = sub_a36e6577[idx]
        mem[32] = 34
        require t - 1 < mem[(32 * s) + 128]
        mem[(32 * s) + (32 * t - 1) + 160] = sub_4e9723bc[stor36[idx]]
        idx = idx + 1
        t = t - 1
        continue 
    mem[(64 * s) + 160] = 64
    mem[(64 * s) + 224] = mem[96]
    mem[(64 * s) + 256 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(64 * s) + 192] = (32 * mem[96]) + 96
    mem[(32 * mem[96]) + (64 * s) + 256] = mem[(32 * s) + 128]
    t = 0
    while t < 32 * mem[(32 * s) + 128]:
        mem[t + (32 * mem[96]) + (64 * s) + 288] = mem[t + (32 * s) + 160]
        t = t + 32
        continue 
    return memory
      from (64 * s) + 160
       len (32 * mem[(32 * s) + 128]) + (32 * mem[96]) + (127 * s) + 128
}

function sub_ef0ad846(?) {
    require 1 == bool(stor6)
    require not stor12[msg.sender]
    require uint256(sub_a8b4515c[msg.sender].field_0) > 0
    require uint256(sub_a8b4515c[msg.sender].field_1024) <= block.timestamp
    if block.timestamp - uint256(sub_a8b4515c[msg.sender].field_1024) >= stor28:
        require uint256(sub_a8b4515c[msg.sender].field_0) * stor30 / 100 <= uint256(sub_a8b4515c[msg.sender].field_0)
        uint256(sub_a8b4515c[address(msg.sender)].field_0) = 0
        uint256(sub_a8b4515c[address(msg.sender)].field_256) = 0
        uint256(sub_a8b4515c[address(msg.sender)].field_768) = 0
        uint256(sub_a8b4515c[address(msg.sender)].field_512) = 0
        sub_936f73c6[address(msg.sender)] = 0
        require uint256(sub_a8b4515c[msg.sender].field_0) - (uint256(sub_a8b4515c[msg.sender].field_0) * stor30 / 100) <= balanceOf[this.address]
        balanceOf[msg.sender] = uint256(sub_a8b4515c[msg.sender].field_0) - (uint256(sub_a8b4515c[msg.sender].field_0) * stor30 / 100) + balanceOf[msg.sender]
        balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[msg.sender].field_0) + (uint256(sub_a8b4515c[msg.sender].field_0) * stor30 / 100)
        emit Transfer((uint256(sub_a8b4515c[msg.sender].field_0) - (uint256(sub_a8b4515c[msg.sender].field_0) * stor30 / 100)), this.address, msg.sender);
    else:
        require uint256(sub_a8b4515c[msg.sender].field_0) * stor29 / 100 <= uint256(sub_a8b4515c[msg.sender].field_0)
        uint256(sub_a8b4515c[address(msg.sender)].field_0) = 0
        uint256(sub_a8b4515c[address(msg.sender)].field_256) = 0
        uint256(sub_a8b4515c[address(msg.sender)].field_768) = 0
        uint256(sub_a8b4515c[address(msg.sender)].field_512) = 0
        sub_936f73c6[address(msg.sender)] = 0
        require uint256(sub_a8b4515c[msg.sender].field_0) - (uint256(sub_a8b4515c[msg.sender].field_0) * stor29 / 100) <= balanceOf[this.address]
        balanceOf[msg.sender] = uint256(sub_a8b4515c[msg.sender].field_0) - (uint256(sub_a8b4515c[msg.sender].field_0) * stor29 / 100) + balanceOf[msg.sender]
        balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[msg.sender].field_0) + (uint256(sub_a8b4515c[msg.sender].field_0) * stor29 / 100)
        emit Transfer((uint256(sub_a8b4515c[msg.sender].field_0) - (uint256(sub_a8b4515c[msg.sender].field_0) * stor29 / 100)), this.address, msg.sender);
    return 1
}

function mint(uint256 arg1) {
    require 1 == bool(stor6)
    require not stor12[msg.sender]
    require arg1 >= storF36D
    require arg1 <= balanceOf[address(msg.sender)]
    require not stor12[address(msg.sender)]
    mem[0] = msg.sender
    mem[32] = 13
    idx = 1
    s = stor[sha3(mem[0 len 64])]
    while idx <= 16:
        if address(s):
            if address(s) != msg.sender:
                if not stor27[address(msg.sender)]:
                    if 1 == idx:
                        stor18[address(s)][1][idx]++
                        stor27[address(msg.sender)] = 1
                        mem[0] = address(s)
                        mem[32] = 13
                        idx = idx + 1
                        s = fromaddr[address(s)]
                        continue 
                if idx >= 2:
                    stor18[address(s)][1][idx]++
                    mem[0] = address(s)
                    mem[32] = 13
                    idx = idx + 1
                    s = fromaddr[address(s)]
                    continue 
        uint256(sub_a8b4515c[address(msg.sender)].field_0) += arg1
        uint256(sub_a8b4515c[address(msg.sender)].field_256) += arg1
        uint256(sub_a8b4515c[address(msg.sender)].field_1024) = block.timestamp
        idx = 4
        while idx >= 1:
            mem[0] = idx
            mem[32] = 23
            if arg1 < uint256(plans[idx].field_0):
                idx = idx - 1
                continue 
            uint256(sub_a8b4515c[address(msg.sender)].field_512) += arg1 * uint256(plans[idx].field_256)
            balanceOf[address(msg.sender)] -= arg1
            balanceOf[this.address] += arg1
            sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
        balanceOf[address(msg.sender)] -= arg1
        balanceOf[this.address] += arg1
        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
    uint256(sub_a8b4515c[address(msg.sender)].field_0) += arg1
    uint256(sub_a8b4515c[address(msg.sender)].field_256) += arg1
    uint256(sub_a8b4515c[address(msg.sender)].field_1024) = block.timestamp
    idx = 4
    while idx >= 1:
        mem[0] = idx
        mem[32] = 23
        if arg1 < uint256(plans[idx].field_0):
            idx = idx - 1
            continue 
        uint256(sub_a8b4515c[address(msg.sender)].field_512) += arg1 * uint256(plans[idx].field_256)
        balanceOf[address(msg.sender)] -= arg1
        balanceOf[this.address] += arg1
        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
    balanceOf[address(msg.sender)] -= arg1
    balanceOf[this.address] += arg1
    sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
}

function intertransfer(address arg1, address arg2, uint256 arg3) {
    require sub_aec2e821Address
    require msg.sender == sub_aec2e821Address
    require not stor12[address(arg1)]
    require not stor12[address(arg2)]
    require 1 == bool(stor6)
    require (arg3 * sub_79931772 / 100) + arg3 <= balanceOf[address(arg1)]
    require arg3 > 0
    require arg3 < totalSupply
    require arg2
    require arg2 != arg1
    if not fromaddr[address(arg2)]:
        if arg2 != fromaddr[address(arg1)]:
            fromaddr[address(arg2)] = arg1
            if stor33[stor41[stor13[address(arg2)]]]:
                sub_5087399b[arg2] = sub_5087399b[stor13[address(arg2)]]
            if stor33[stor13[address(arg2)]]:
                sub_5087399b[address(arg2)] = fromaddr[address(arg2)]
            idx = 1
            s = arg2
            t = fromaddr[address(arg2)]
            while idx <= 16:
                if address(t):
                    if address(t) != address(s):
                        stor18[address(t)][idx]++
                        mem[0] = address(t)
                        mem[32] = 13
                        idx = idx + 1
                        s = t
                        t = fromaddr[address(t)]
                        continue 
                require (arg3 * sub_79931772 / 100) + arg3 <= balanceOf[address(arg1)]
                balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * sub_79931772 / 100) - arg3
                require (arg3 * sub_79931772 / 100) + balanceOf[this.address] >= balanceOf[this.address]
                balanceOf[this.address] += arg3 * sub_79931772 / 100
                require arg3 + balanceOf[arg2] >= balanceOf[arg2]
                balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                emit Transfer((arg3 * sub_79931772 / 100), arg1, this.address);
                emit Transfer(arg3, arg1, arg2);
                require balanceOf[arg1] - (arg3 * sub_79931772 / 100) + balanceOf[address(arg2)] == balanceOf[arg1] + balanceOf[address(arg2)]
                return 1
    require (arg3 * sub_79931772 / 100) + arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * sub_79931772 / 100) - arg3
    require (arg3 * sub_79931772 / 100) + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += arg3 * sub_79931772 / 100
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer((arg3 * sub_79931772 / 100), arg1, this.address);
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[arg1] - (arg3 * sub_79931772 / 100) + balanceOf[address(arg2)] == balanceOf[arg1] + balanceOf[address(arg2)]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor12[address(msg.sender)]
    require not stor12[address(arg1)]
    require 1 == bool(stor6)
    require (arg2 * sub_79931772 / 100) + arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    require arg2 < totalSupply
    require arg1
    require arg1 != msg.sender
    if not fromaddr[address(arg1)]:
        if arg1 != fromaddr[address(msg.sender)]:
            fromaddr[address(arg1)] = msg.sender
            if stor33[stor41[stor13[address(arg1)]]]:
                sub_5087399b[arg1] = sub_5087399b[stor13[address(arg1)]]
            if stor33[stor13[address(arg1)]]:
                sub_5087399b[address(arg1)] = fromaddr[address(arg1)]
            idx = 1
            s = arg1
            t = fromaddr[address(arg1)]
            while idx <= 16:
                if address(t):
                    if address(t) != address(s):
                        stor18[address(t)][idx]++
                        mem[0] = address(t)
                        mem[32] = 13
                        idx = idx + 1
                        s = t
                        t = fromaddr[address(t)]
                        continue 
                require (arg2 * sub_79931772 / 100) + arg2 <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * sub_79931772 / 100) - arg2
                require (arg2 * sub_79931772 / 100) + balanceOf[this.address] >= balanceOf[this.address]
                balanceOf[this.address] += arg2 * sub_79931772 / 100
                require arg2 + balanceOf[arg1] >= balanceOf[arg1]
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer((arg2 * sub_79931772 / 100), msg.sender, this.address);
                emit Transfer(arg2, msg.sender, arg1);
                require balanceOf[msg.sender] - (arg2 * sub_79931772 / 100) + balanceOf[address(arg1)] == balanceOf[msg.sender] + balanceOf[address(arg1)]
                return 1
    require (arg2 * sub_79931772 / 100) + arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * sub_79931772 / 100) - arg2
    require (arg2 * sub_79931772 / 100) + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += arg2 * sub_79931772 / 100
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer((arg2 * sub_79931772 / 100), msg.sender, this.address);
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[msg.sender] - (arg2 * sub_79931772 / 100) + balanceOf[address(arg1)] == balanceOf[msg.sender] + balanceOf[address(arg1)]
    return 1
}

function getmy(address arg1) {
    if 0 >= uint256(sub_a8b4515c[address(arg1)].field_0):
        require sub_cede67cbAddress
        require ext_code.size(sub_cede67cbAddress)
        call sub_cede67cbAddress.0x70a08231 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return balanceOf[address(arg1)], 
               eth.balance(arg1),
               sub_936f73c6[address(arg1)],
               buyPrice,
               balanceOf[address(this.address)],
               sub_8aa72433[address(arg1)],
               bool(stor33[address(arg1)]),
               sub_4e9723bc[address(arg1)],
               uint256(sub_a8b4515c[address(arg1)].field_0),
               uint256(sub_a8b4515c[address(arg1)].field_1024),
               uint256(sub_a8b4515c[address(arg1)].field_256),
               uint256(sub_a8b4515c[address(arg1)].field_512),
               uint256(sub_a8b4515c[address(arg1)].field_768),
               uint256(sub_a8b4515c[address(arg1)].field_1280),
               eth.balance(arg1),
               0,
               sub_2a699f2c,
               ext_call.return_data[0]
    require uint256(sub_a8b4515c[address(arg1)].field_1024) <= block.timestamp
    require sub_cede67cbAddress
    require ext_code.size(sub_cede67cbAddress)
    call sub_cede67cbAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp - uint256(sub_a8b4515c[address(arg1)].field_1024) >= stor28:
        return balanceOf[address(arg1)], 
               eth.balance(arg1),
               sub_936f73c6[address(arg1)],
               buyPrice,
               balanceOf[address(this.address)],
               sub_8aa72433[address(arg1)],
               bool(stor33[address(arg1)]),
               sub_4e9723bc[address(arg1)],
               uint256(sub_a8b4515c[address(arg1)].field_0),
               uint256(sub_a8b4515c[address(arg1)].field_1024),
               uint256(sub_a8b4515c[address(arg1)].field_256),
               uint256(sub_a8b4515c[address(arg1)].field_512),
               uint256(sub_a8b4515c[address(arg1)].field_768),
               uint256(sub_a8b4515c[address(arg1)].field_1280),
               eth.balance(arg1),
               stor30 * uint256(sub_a8b4515c[address(arg1)].field_0) / 100,
               sub_2a699f2c,
               ext_call.return_data[0]
    return balanceOf[address(arg1)], 
           eth.balance(arg1),
           sub_936f73c6[address(arg1)],
           buyPrice,
           balanceOf[address(this.address)],
           sub_8aa72433[address(arg1)],
           bool(stor33[address(arg1)]),
           sub_4e9723bc[address(arg1)],
           uint256(sub_a8b4515c[address(arg1)].field_0),
           uint256(sub_a8b4515c[address(arg1)].field_1024),
           uint256(sub_a8b4515c[address(arg1)].field_256),
           uint256(sub_a8b4515c[address(arg1)].field_512),
           uint256(sub_a8b4515c[address(arg1)].field_768),
           uint256(sub_a8b4515c[address(arg1)].field_1280),
           eth.balance(arg1),
           stor29 * uint256(sub_a8b4515c[address(arg1)].field_0) / 100,
           sub_2a699f2c,
           ext_call.return_data[0]
}

function geteam(address arg1) {
    mem[96 len 512] = code.data[16706 len 512]
    mem[608 len 512] = code.data[16706 len 512]
    idx = 0
    while idx < 16:
        mem[(32 * idx) + 96] = stor18[address(arg1)][idx + 1]
        mem[0] = idx + 1
        mem[32] = sha3(address(arg1), 18) + 1
        mem[(32 * idx) + 608] = stor18[address(arg1)][1][idx + 1]
        idx = idx + 1
        continue 
    require 2 < sub_60cb613e.length
    if 2 <= sub_936f73c6[address(arg1)]:
        if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_512):
            require 0 < sub_60cb613e.length
            if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_0):
                return stor18[address(arg1)][1], 
                       stor18[address(arg1)][2],
                       stor18[address(arg1)][1][1],
                       stor18[address(arg1)][1][2],
                       mem[96 len 512],
                       mem[608 len 512],
                       sub_6a3c6067[address(arg1)],
                       sub_936f73c6[address(arg1)],
                       0
            require 1 < sub_60cb613e.length
            if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_256):
                return stor18[address(arg1)][1], 
                       stor18[address(arg1)][2],
                       stor18[address(arg1)][1][1],
                       stor18[address(arg1)][1][2],
                       mem[96 len 512],
                       mem[608 len 512],
                       sub_6a3c6067[address(arg1)],
                       sub_936f73c6[address(arg1)],
                       0
        else:
            require 3 < sub_60cb613e.length
            require 0 < sub_60cb613e.length
            if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_768):
                if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_0):
                    return stor18[address(arg1)][1], 
                           stor18[address(arg1)][2],
                           stor18[address(arg1)][1][1],
                           stor18[address(arg1)][1][2],
                           mem[96 len 512],
                           mem[608 len 512],
                           sub_6a3c6067[address(arg1)],
                           sub_936f73c6[address(arg1)],
                           0
                require 1 < sub_60cb613e.length
                if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_256):
                    return stor18[address(arg1)][1], 
                           stor18[address(arg1)][2],
                           stor18[address(arg1)][1][1],
                           stor18[address(arg1)][1][2],
                           mem[96 len 512],
                           mem[608 len 512],
                           sub_6a3c6067[address(arg1)],
                           sub_936f73c6[address(arg1)],
                           0
            else:
                if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_0):
                    return stor18[address(arg1)][1], 
                           stor18[address(arg1)][2],
                           stor18[address(arg1)][1][1],
                           stor18[address(arg1)][1][2],
                           mem[96 len 512],
                           mem[608 len 512],
                           sub_6a3c6067[address(arg1)],
                           sub_936f73c6[address(arg1)],
                           1
                require 1 < sub_60cb613e.length
                if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_256):
                    return stor18[address(arg1)][1], 
                           stor18[address(arg1)][2],
                           stor18[address(arg1)][1][1],
                           stor18[address(arg1)][1][2],
                           mem[96 len 512],
                           mem[608 len 512],
                           sub_6a3c6067[address(arg1)],
                           sub_936f73c6[address(arg1)],
                           1
        ('ge', ('stor', ('map', 1, ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor18', 18))))), ('type', 256, ('field', 256, ('stor', ('name', 'sub_60cb613e', 16)))))
        return stor18[address(arg1)][1], 
               stor18[address(arg1)][2],
               stor18[address(arg1)][1][1],
               stor18[address(arg1)][1][2],
               mem[96 len 512],
               mem[608 len 512],
               sub_6a3c6067[address(arg1)],
               sub_936f73c6[address(arg1)],
               2
    if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_512):
        require 0 < sub_60cb613e.length
        if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_0):
            return stor18[address(arg1)][1], 
                   stor18[address(arg1)][2],
                   stor18[address(arg1)][1][1],
                   stor18[address(arg1)][1][2],
                   mem[96 len 512],
                   mem[608 len 512],
                   sub_6a3c6067[address(arg1)],
                   0,
                   0
        require 1 < sub_60cb613e.length
        if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_256):
            return stor18[address(arg1)][1], 
                   stor18[address(arg1)][2],
                   stor18[address(arg1)][1][1],
                   stor18[address(arg1)][1][2],
                   mem[96 len 512],
                   mem[608 len 512],
                   sub_6a3c6067[address(arg1)],
                   0,
                   0
    else:
        require 3 < sub_60cb613e.length
        require 0 < sub_60cb613e.length
        if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_768):
            if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_0):
                return stor18[address(arg1)][1], 
                       stor18[address(arg1)][2],
                       stor18[address(arg1)][1][1],
                       stor18[address(arg1)][1][2],
                       mem[96 len 512],
                       mem[608 len 512],
                       sub_6a3c6067[address(arg1)],
                       0,
                       0
            require 1 < sub_60cb613e.length
            if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_256):
                return stor18[address(arg1)][1], 
                       stor18[address(arg1)][2],
                       stor18[address(arg1)][1][1],
                       stor18[address(arg1)][1][2],
                       mem[96 len 512],
                       mem[608 len 512],
                       sub_6a3c6067[address(arg1)],
                       0,
                       0
        else:
            if stor18[address(arg1)][1][2] < uint256(sub_60cb613e.field_0):
                return stor18[address(arg1)][1], 
                       stor18[address(arg1)][2],
                       stor18[address(arg1)][1][1],
                       stor18[address(arg1)][1][2],
                       mem[96 len 512],
                       mem[608 len 512],
                       sub_6a3c6067[address(arg1)],
                       0,
                       1
            require 1 < sub_60cb613e.length
            if stor18[address(arg1)][1][1] < uint256(sub_60cb613e.field_256):
                return stor18[address(arg1)][1], 
                       stor18[address(arg1)][2],
                       stor18[address(arg1)][1][1],
                       stor18[address(arg1)][1][2],
                       mem[96 len 512],
                       mem[608 len 512],
                       sub_6a3c6067[address(arg1)],
                       0,
                       1
    ('ge', ('stor', ('map', 1, ('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor18', 18))))), ('type', 256, ('field', 256, ('stor', ('name', 'sub_60cb613e', 16)))))
    return stor18[address(arg1)][1], 
           stor18[address(arg1)][2],
           stor18[address(arg1)][1][1],
           stor18[address(arg1)][1][2],
           mem[96 len 512],
           mem[608 len 512],
           sub_6a3c6067[address(arg1)],
           0,
           2
}

function reward() {
    require 1 == bool(stor6)
    require not stor12[msg.sender]
    require block.timestamp - sub_21ed6243 >= sub_936f73c6[msg.sender]
    require sub_936f73c6[address(msg.sender)]
    require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 > 0
    if not uint256(sub_a8b4515c[address(msg.sender)].field_256):
        mem[0] = msg.sender
        mem[32] = 13
        idx = 1
        s = msg.sender
        t = stor[sha3(mem[0 len 64])]
        while idx <= stor39:
            if address(t):
                if address(t) != address(s):
                    require stor18[address(t)][1][1] < uint256(sub_27d01317[idx].field_0)
                    mem[0] = address(t)
                    mem[32] = 13
                    idx = idx + 1
                    s = t
                    t = fromaddr[address(t)]
                    continue 
            if 1 <= stor40:
                if fromaddr[address(msg.sender)]:
                    require fromaddr[address(msg.sender)] == msg.sender
            if sub_936f73c6[address(msg.sender)] > 0:
                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
            return 1
        if 1 <= stor40:
            if fromaddr[address(msg.sender)]:
                require fromaddr[address(msg.sender)] == msg.sender
    else:
        require uint256(sub_a8b4515c[address(msg.sender)].field_768) <= uint256(sub_a8b4515c[address(msg.sender)].field_512)
        if uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) > per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000:
            if uint256(sub_a8b4515c[address(msg.sender)].field_0) > 0:
                if per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 >= uint256(sub_a8b4515c[address(msg.sender)].field_0):
                    uint256(sub_a8b4515c[address(msg.sender)].field_0) = 0
                else:
                    require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 <= uint256(sub_a8b4515c[address(msg.sender)].field_0)
                    uint256(sub_a8b4515c[address(msg.sender)].field_0) -= per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
            uint256(sub_a8b4515c[address(msg.sender)].field_768) += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
            require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 <= balanceOf[this.address]
            uint256(sub_a8b4515c[address(msg.sender)].field_1280) += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
            balanceOf[address(msg.sender)] += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
            balanceOf[this.address] -= per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
            emit Transfer((per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000), this.address, msg.sender);
            mem[0] = msg.sender
            mem[32] = 13
            s = 0
            idx = 1
            t = msg.sender
            u = stor[sha3(mem[0 len 64])]
            while idx <= stor39:
                if not address(u):
                    mem[0] = msg.sender
                    mem[32] = 13
                    idx = 1
                    s = msg.sender
                    t = stor[sha3(mem[0 len 64])]
                    while idx <= stor40:
                        if not address(t):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        if address(t) == address(s):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 > 0
                        sub_6a3c6067[address(t)] += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
                        require 2 < sub_60cb613e.length
                        if stor18[address(t)][1][2] >= uint256(sub_60cb613e.field_512):
                            require 3 < sub_60cb613e.length
                            if stor18[address(t)][1][1] >= uint256(sub_60cb613e.field_768):
                                require 0 < sub_60cb613e.length
                                if stor18[address(t)][1][2] < uint256(sub_60cb613e.field_0):
                                    if stor31 <= sub_6a3c6067[address(t)]:
                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                        if uint256(sub_a8b4515c[address(t)].field_256):
                                            require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                            if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                    if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                        uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    else:
                                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                        uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                            else:
                                                uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                sub_936f73c6[address(t)] = 0
                                                require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                        sub_6a3c6067[address(t)] = 0
                                else:
                                    require 1 < sub_60cb613e.length
                                    if stor18[address(t)][1][1] < uint256(sub_60cb613e.field_256):
                                        if stor31 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                                    else:
                                        if stor32 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_6ee7578a / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_6ee7578a / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_6ee7578a / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                        mem[0] = address(t)
                        mem[32] = 13
                        idx = idx + 1
                        s = t
                        t = fromaddr[address(t)]
                        continue 
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                if address(u) == address(t):
                    mem[0] = msg.sender
                    mem[32] = 13
                    idx = 1
                    s = msg.sender
                    t = stor[sha3(mem[0 len 64])]
                    while idx <= stor40:
                        if not address(t):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        if address(t) == address(s):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 > 0
                        sub_6a3c6067[address(t)] += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
                        require 2 < sub_60cb613e.length
                        if stor18[address(t)][1][2] >= uint256(sub_60cb613e.field_512):
                            require 3 < sub_60cb613e.length
                            if stor18[address(t)][1][1] >= uint256(sub_60cb613e.field_768):
                                require 0 < sub_60cb613e.length
                                if stor18[address(t)][1][2] < uint256(sub_60cb613e.field_0):
                                    if stor31 <= sub_6a3c6067[address(t)]:
                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                        if uint256(sub_a8b4515c[address(t)].field_256):
                                            require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                            if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                    if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                        uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    else:
                                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                        uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                            else:
                                                uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                sub_936f73c6[address(t)] = 0
                                                require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                        sub_6a3c6067[address(t)] = 0
                                else:
                                    require 1 < sub_60cb613e.length
                                    if stor18[address(t)][1][1] < uint256(sub_60cb613e.field_256):
                                        if stor31 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                                    else:
                                        if stor32 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_6ee7578a / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_6ee7578a / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_6ee7578a / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                        mem[0] = address(t)
                        mem[32] = 13
                        idx = idx + 1
                        s = t
                        t = fromaddr[address(t)]
                        continue 
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                if stor18[address(u)][1][1] < uint256(sub_27d01317[idx].field_0):
                    mem[0] = address(u)
                    mem[32] = 13
                    s = s
                    idx = idx + 1
                    t = u
                    u = fromaddr[address(u)]
                    continue 
                require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100 > 0
                if uint256(sub_a8b4515c[address(u)].field_256):
                    require uint256(sub_a8b4515c[address(u)].field_768) <= uint256(sub_a8b4515c[address(u)].field_512)
                    if uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) > per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100:
                        if uint256(sub_a8b4515c[address(u)].field_0) > 0:
                            if per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100 >= uint256(sub_a8b4515c[address(u)].field_0):
                                uint256(sub_a8b4515c[address(u)].field_0) = 0
                            else:
                                require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100 <= uint256(sub_a8b4515c[address(u)].field_0)
                                uint256(sub_a8b4515c[address(u)].field_0) -= per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                        uint256(sub_a8b4515c[address(u)].field_768) += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                        require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100 <= balanceOf[this.address]
                        uint256(sub_a8b4515c[address(u)].field_1280) += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                        balanceOf[address(u)] += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                        balanceOf[this.address] -= per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                        mem[96] = per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                        emit Transfer((per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100), this.address, address(u));
                    else:
                        uint256(sub_a8b4515c[address(u)].field_0) = 0
                        uint256(sub_a8b4515c[address(u)].field_256) = 0
                        uint256(sub_a8b4515c[address(u)].field_768) = 0
                        uint256(sub_a8b4515c[address(u)].field_512) = 0
                        sub_936f73c6[address(u)] = 0
                        require uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) <= balanceOf[this.address]
                        uint256(sub_a8b4515c[address(u)].field_1280) = uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) + uint256(sub_a8b4515c[address(u)].field_1280)
                        balanceOf[address(u)] = uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) + balanceOf[address(u)]
                        balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(u)].field_512) + uint256(sub_a8b4515c[address(u)].field_768)
                        mem[96] = uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768)
                        emit Transfer((uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768)), this.address, address(u));
                mem[0] = address(u)
                mem[32] = 13
                s = per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 * uint256(sub_27d01317[idx].field_256) / 100
                idx = idx + 1
                t = u
                u = fromaddr[address(u)]
                continue 
            mem[0] = msg.sender
            mem[32] = 13
            idx = 1
            s = msg.sender
            t = stor[sha3(mem[0 len 64])]
            while idx <= stor40:
                if not address(t):
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                if address(t) == address(s):
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                require per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000 > 0
                sub_6a3c6067[address(t)] += per * uint256(sub_a8b4515c[address(msg.sender)].field_256) / 1000
                require 2 < sub_60cb613e.length
                if stor18[address(t)][1][2] >= uint256(sub_60cb613e.field_512):
                    require 3 < sub_60cb613e.length
                    if stor18[address(t)][1][1] >= uint256(sub_60cb613e.field_768):
                        require 0 < sub_60cb613e.length
                        if stor18[address(t)][1][2] < uint256(sub_60cb613e.field_0):
                            if stor31 <= sub_6a3c6067[address(t)]:
                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                if uint256(sub_a8b4515c[address(t)].field_256):
                                    require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                    if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                        if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                            if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                uint256(sub_a8b4515c[address(t)].field_0) = 0
                                            else:
                                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                        uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                    else:
                                        uint256(sub_a8b4515c[address(t)].field_0) = 0
                                        uint256(sub_a8b4515c[address(t)].field_256) = 0
                                        uint256(sub_a8b4515c[address(t)].field_768) = 0
                                        uint256(sub_a8b4515c[address(t)].field_512) = 0
                                        sub_936f73c6[address(t)] = 0
                                        require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                        uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                        balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                        balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                        mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                        emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                sub_6a3c6067[address(t)] = 0
                        else:
                            require 1 < sub_60cb613e.length
                            if stor18[address(t)][1][1] < uint256(sub_60cb613e.field_256):
                                if stor31 <= sub_6a3c6067[address(t)]:
                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                    if uint256(sub_a8b4515c[address(t)].field_256):
                                        require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                        if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                            if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                else:
                                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                    uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                        else:
                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                            uint256(sub_a8b4515c[address(t)].field_256) = 0
                                            uint256(sub_a8b4515c[address(t)].field_768) = 0
                                            uint256(sub_a8b4515c[address(t)].field_512) = 0
                                            sub_936f73c6[address(t)] = 0
                                            require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                            balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                            balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                            mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                            emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                    sub_6a3c6067[address(t)] = 0
                            else:
                                if stor32 <= sub_6a3c6067[address(t)]:
                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 > 0
                                    if uint256(sub_a8b4515c[address(t)].field_256):
                                        require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                        if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_6ee7578a / 100:
                                            if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                if sub_6a3c6067[address(t)] * sub_6ee7578a / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                else:
                                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                    uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            mem[96] = sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            emit Transfer((sub_6a3c6067[address(t)] * sub_6ee7578a / 100), this.address, address(t));
                                        else:
                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                            uint256(sub_a8b4515c[address(t)].field_256) = 0
                                            uint256(sub_a8b4515c[address(t)].field_768) = 0
                                            uint256(sub_a8b4515c[address(t)].field_512) = 0
                                            sub_936f73c6[address(t)] = 0
                                            require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                            balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                            balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                            mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                            emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                    sub_6a3c6067[address(t)] = 0
                mem[0] = address(t)
                mem[32] = 13
                idx = idx + 1
                s = t
                t = fromaddr[address(t)]
                continue 
        else:
            uint256(sub_a8b4515c[address(msg.sender)].field_0) = 0
            uint256(sub_a8b4515c[address(msg.sender)].field_256) = 0
            uint256(sub_a8b4515c[address(msg.sender)].field_768) = 0
            uint256(sub_a8b4515c[address(msg.sender)].field_512) = 0
            sub_936f73c6[address(msg.sender)] = 0
            require uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) <= balanceOf[this.address]
            uint256(sub_a8b4515c[address(msg.sender)].field_1280) = uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) + uint256(sub_a8b4515c[address(msg.sender)].field_1280)
            balanceOf[address(msg.sender)] = uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) + balanceOf[address(msg.sender)]
            balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(msg.sender)].field_512) + uint256(sub_a8b4515c[address(msg.sender)].field_768)
            emit Transfer((uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768)), this.address, msg.sender);
            mem[0] = msg.sender
            mem[32] = 13
            s = 0
            idx = 1
            t = msg.sender
            u = stor[sha3(mem[0 len 64])]
            while idx <= stor39:
                if not address(u):
                    mem[0] = msg.sender
                    mem[32] = 13
                    idx = 1
                    s = msg.sender
                    t = stor[sha3(mem[0 len 64])]
                    while idx <= stor40:
                        if not address(t):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        if address(t) == address(s):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        require uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) > 0
                        sub_6a3c6067[address(t)] = uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) + sub_6a3c6067[address(t)]
                        require 2 < sub_60cb613e.length
                        if stor18[address(t)][1][2] >= uint256(sub_60cb613e.field_512):
                            require 3 < sub_60cb613e.length
                            if stor18[address(t)][1][1] >= uint256(sub_60cb613e.field_768):
                                require 0 < sub_60cb613e.length
                                if stor18[address(t)][1][2] < uint256(sub_60cb613e.field_0):
                                    if stor31 <= sub_6a3c6067[address(t)]:
                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                        if uint256(sub_a8b4515c[address(t)].field_256):
                                            require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                            if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                    if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                        uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    else:
                                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                        uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                            else:
                                                uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                sub_936f73c6[address(t)] = 0
                                                require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                        sub_6a3c6067[address(t)] = 0
                                else:
                                    require 1 < sub_60cb613e.length
                                    if stor18[address(t)][1][1] < uint256(sub_60cb613e.field_256):
                                        if stor31 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                                    else:
                                        if stor32 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_6ee7578a / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_6ee7578a / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_6ee7578a / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                        mem[0] = address(t)
                        mem[32] = 13
                        idx = idx + 1
                        s = t
                        t = fromaddr[address(t)]
                        continue 
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                if address(u) == address(t):
                    mem[0] = msg.sender
                    mem[32] = 13
                    idx = 1
                    s = msg.sender
                    t = stor[sha3(mem[0 len 64])]
                    while idx <= stor40:
                        if not address(t):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        if address(t) == address(s):
                            if sub_936f73c6[address(msg.sender)] > 0:
                                sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                            return 1
                        require uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) > 0
                        sub_6a3c6067[address(t)] = uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) + sub_6a3c6067[address(t)]
                        require 2 < sub_60cb613e.length
                        if stor18[address(t)][1][2] >= uint256(sub_60cb613e.field_512):
                            require 3 < sub_60cb613e.length
                            if stor18[address(t)][1][1] >= uint256(sub_60cb613e.field_768):
                                require 0 < sub_60cb613e.length
                                if stor18[address(t)][1][2] < uint256(sub_60cb613e.field_0):
                                    if stor31 <= sub_6a3c6067[address(t)]:
                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                        if uint256(sub_a8b4515c[address(t)].field_256):
                                            require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                            if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                    if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                        uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    else:
                                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                        uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                            else:
                                                uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                sub_936f73c6[address(t)] = 0
                                                require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                        sub_6a3c6067[address(t)] = 0
                                else:
                                    require 1 < sub_60cb613e.length
                                    if stor18[address(t)][1][1] < uint256(sub_60cb613e.field_256):
                                        if stor31 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                                    else:
                                        if stor32 <= sub_6a3c6067[address(t)]:
                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 > 0
                                            if uint256(sub_a8b4515c[address(t)].field_256):
                                                require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                                if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_6ee7578a / 100:
                                                    if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                        if sub_6a3c6067[address(t)] * sub_6ee7578a / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                        else:
                                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                            uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    mem[96] = sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                                    emit Transfer((sub_6a3c6067[address(t)] * sub_6ee7578a / 100), this.address, address(t));
                                                else:
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_256) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_768) = 0
                                                    uint256(sub_a8b4515c[address(t)].field_512) = 0
                                                    sub_936f73c6[address(t)] = 0
                                                    require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                                    uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                                    balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                                    balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                                    mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                                    emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                            sub_6a3c6067[address(t)] = 0
                        mem[0] = address(t)
                        mem[32] = 13
                        idx = idx + 1
                        s = t
                        t = fromaddr[address(t)]
                        continue 
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                if stor18[address(u)][1][1] < uint256(sub_27d01317[idx].field_0):
                    mem[0] = address(u)
                    mem[32] = 13
                    s = s
                    idx = idx + 1
                    t = u
                    u = fromaddr[address(u)]
                    continue 
                require (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100 > 0
                if uint256(sub_a8b4515c[address(u)].field_256):
                    require uint256(sub_a8b4515c[address(u)].field_768) <= uint256(sub_a8b4515c[address(u)].field_512)
                    if uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) > (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100:
                        if uint256(sub_a8b4515c[address(u)].field_0) > 0:
                            if (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100 >= uint256(sub_a8b4515c[address(u)].field_0):
                                uint256(sub_a8b4515c[address(u)].field_0) = 0
                            else:
                                require (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100 <= uint256(sub_a8b4515c[address(u)].field_0)
                                uint256(sub_a8b4515c[address(u)].field_0) -= (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                        uint256(sub_a8b4515c[address(u)].field_768) += (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                        require (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100 <= balanceOf[this.address]
                        uint256(sub_a8b4515c[address(u)].field_1280) += (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                        balanceOf[address(u)] += (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                        balanceOf[this.address] -= (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                        mem[96] = (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                        emit Transfer(((uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100), this.address, address(u));
                    else:
                        uint256(sub_a8b4515c[address(u)].field_0) = 0
                        uint256(sub_a8b4515c[address(u)].field_256) = 0
                        uint256(sub_a8b4515c[address(u)].field_768) = 0
                        uint256(sub_a8b4515c[address(u)].field_512) = 0
                        sub_936f73c6[address(u)] = 0
                        require uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) <= balanceOf[this.address]
                        uint256(sub_a8b4515c[address(u)].field_1280) = uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) + uint256(sub_a8b4515c[address(u)].field_1280)
                        balanceOf[address(u)] = uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768) + balanceOf[address(u)]
                        balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(u)].field_512) + uint256(sub_a8b4515c[address(u)].field_768)
                        mem[96] = uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768)
                        emit Transfer((uint256(sub_a8b4515c[address(u)].field_512) - uint256(sub_a8b4515c[address(u)].field_768)), this.address, address(u));
                mem[0] = address(u)
                mem[32] = 13
                s = (uint256(sub_a8b4515c[address(msg.sender)].field_512) * uint256(sub_27d01317[idx].field_256)) - (uint256(sub_a8b4515c[address(msg.sender)].field_768) * uint256(sub_27d01317[idx].field_256)) / 100
                idx = idx + 1
                t = u
                u = fromaddr[address(u)]
                continue 
            mem[0] = msg.sender
            mem[32] = 13
            idx = 1
            s = msg.sender
            t = stor[sha3(mem[0 len 64])]
            while idx <= stor40:
                if not address(t):
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                if address(t) == address(s):
                    if sub_936f73c6[address(msg.sender)] > 0:
                        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
                    return 1
                require uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) > 0
                sub_6a3c6067[address(t)] = uint256(sub_a8b4515c[address(msg.sender)].field_512) - uint256(sub_a8b4515c[address(msg.sender)].field_768) + sub_6a3c6067[address(t)]
                require 2 < sub_60cb613e.length
                if stor18[address(t)][1][2] >= uint256(sub_60cb613e.field_512):
                    require 3 < sub_60cb613e.length
                    if stor18[address(t)][1][1] >= uint256(sub_60cb613e.field_768):
                        require 0 < sub_60cb613e.length
                        if stor18[address(t)][1][2] < uint256(sub_60cb613e.field_0):
                            if stor31 <= sub_6a3c6067[address(t)]:
                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                if uint256(sub_a8b4515c[address(t)].field_256):
                                    require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                    if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                        if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                            if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                uint256(sub_a8b4515c[address(t)].field_0) = 0
                                            else:
                                                require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                        uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                        emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                    else:
                                        uint256(sub_a8b4515c[address(t)].field_0) = 0
                                        uint256(sub_a8b4515c[address(t)].field_256) = 0
                                        uint256(sub_a8b4515c[address(t)].field_768) = 0
                                        uint256(sub_a8b4515c[address(t)].field_512) = 0
                                        sub_936f73c6[address(t)] = 0
                                        require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                        uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                        balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                        balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                        mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                        emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                sub_6a3c6067[address(t)] = 0
                        else:
                            require 1 < sub_60cb613e.length
                            if stor18[address(t)][1][1] < uint256(sub_60cb613e.field_256):
                                if stor31 <= sub_6a3c6067[address(t)]:
                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 > 0
                                    if uint256(sub_a8b4515c[address(t)].field_256):
                                        require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                        if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_afcf28cd / 100:
                                            if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                if sub_6a3c6067[address(t)] * sub_afcf28cd / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                else:
                                                    require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                    uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            require sub_6a3c6067[address(t)] * sub_afcf28cd / 100 <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            mem[96] = sub_6a3c6067[address(t)] * sub_afcf28cd / 100
                                            emit Transfer((sub_6a3c6067[address(t)] * sub_afcf28cd / 100), this.address, address(t));
                                        else:
                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                            uint256(sub_a8b4515c[address(t)].field_256) = 0
                                            uint256(sub_a8b4515c[address(t)].field_768) = 0
                                            uint256(sub_a8b4515c[address(t)].field_512) = 0
                                            sub_936f73c6[address(t)] = 0
                                            require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                            balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                            balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                            mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                            emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                    sub_6a3c6067[address(t)] = 0
                            else:
                                if stor32 <= sub_6a3c6067[address(t)]:
                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 > 0
                                    if uint256(sub_a8b4515c[address(t)].field_256):
                                        require uint256(sub_a8b4515c[address(t)].field_768) <= uint256(sub_a8b4515c[address(t)].field_512)
                                        if uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) > sub_6a3c6067[address(t)] * sub_6ee7578a / 100:
                                            if uint256(sub_a8b4515c[address(t)].field_0) > 0:
                                                if sub_6a3c6067[address(t)] * sub_6ee7578a / 100 >= uint256(sub_a8b4515c[address(t)].field_0):
                                                    uint256(sub_a8b4515c[address(t)].field_0) = 0
                                                else:
                                                    require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= uint256(sub_a8b4515c[address(t)].field_0)
                                                    uint256(sub_a8b4515c[address(t)].field_0) -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            uint256(sub_a8b4515c[address(t)].field_768) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            require sub_6a3c6067[address(t)] * sub_6ee7578a / 100 <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            balanceOf[address(t)] += sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            balanceOf[this.address] -= sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            mem[96] = sub_6a3c6067[address(t)] * sub_6ee7578a / 100
                                            emit Transfer((sub_6a3c6067[address(t)] * sub_6ee7578a / 100), this.address, address(t));
                                        else:
                                            uint256(sub_a8b4515c[address(t)].field_0) = 0
                                            uint256(sub_a8b4515c[address(t)].field_256) = 0
                                            uint256(sub_a8b4515c[address(t)].field_768) = 0
                                            uint256(sub_a8b4515c[address(t)].field_512) = 0
                                            sub_936f73c6[address(t)] = 0
                                            require uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) <= balanceOf[this.address]
                                            uint256(sub_a8b4515c[address(t)].field_1280) = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + uint256(sub_a8b4515c[address(t)].field_1280)
                                            balanceOf[address(t)] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768) + balanceOf[address(t)]
                                            balanceOf[this.address] = balanceOf[this.address] - uint256(sub_a8b4515c[address(t)].field_512) + uint256(sub_a8b4515c[address(t)].field_768)
                                            mem[96] = uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)
                                            emit Transfer((uint256(sub_a8b4515c[address(t)].field_512) - uint256(sub_a8b4515c[address(t)].field_768)), this.address, address(t));
                                    sub_6a3c6067[address(t)] = 0
                mem[0] = address(t)
                mem[32] = 13
                idx = idx + 1
                s = t
                t = fromaddr[address(t)]
                continue 
    if sub_936f73c6[address(msg.sender)] > 0:
        sub_936f73c6[address(msg.sender)] = sub_21ed6243 + block.timestamp
    return 1
}



}
