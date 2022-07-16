contract main {




// =====================  Runtime code  =====================


const sub_02378932(?) = 366

const sub_0b5545c9(?) = (447059 * 3600)

const sub_5a26b338(?) = 8146000779398

const sub_5c4acfde(?) = 10^11

const sub_85257ac5(?) = (438288 * 24 * 3600)

const sub_b37509ca(?) = (464579 * 3600)

const sub_c78c5115(?) = (432419 * 3600)

const sub_ffb11b3f(?) = (447072 * 24 * 3600)


address ambi2Address;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
mapping of struct deposits;
mapping of uint256 totalDeposited;
uint256 sub_3f0dc426;
uint256 sub_a3e7c121;
mapping of struct sub_9a0718de;
uint8 stor9;
mapping of uint8 stor10;
mapping of uint8 stor11;

function frozen() {
    return bool(stor9)
}

function sub_08cb3b53(?) {
    return address(stor2.length)
}

function sub_231a61d4(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function lastDeposit() {
    return stor3.length
}

function sub_36c3e4c7(?) {
    require calldata.size - 4 >= 64
    return bool(deposits[arg1][3][arg2].field_0)
}

function sub_3f0dc426(?) {
    return sub_3f0dc426
}

function totalDeposited(address arg1) {
    require calldata.size - 4 >= 32
    return totalDeposited[arg1]
}

function sub_9a0718de(?) {
    require calldata.size - 4 >= 32
    return sub_9a0718de[arg1].field_0, sub_9a0718de[arg1].field_256, sub_9a0718de[arg1].field_512, sub_9a0718de[arg1].field_768
}

function whitelist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function sub_a3e7c121(?) {
    return sub_a3e7c121
}

function deposits(uint256 arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1].field_0, deposits[arg1].field_256, deposits[arg1].field_512
}

function sub_cae26c3c(?) {
    return address(stor1.length)
}

function ambi2() {
    return ambi2Address
}

function sub_ea776731(?) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not stor11[address(arg1)]:
        emit 0x7044d253: Array(len=22, data='Already not accredited')
        return 0
    stor11[address(arg1)] = 0
    emit 0xaa08de04: arg1
    return 1
}

function addToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor10[address(arg1)]:
        emit 0x7044d253: Array(len=19, data='Already whitelisted')
        return 0
    stor10[address(arg1)] = 1
    emit Whitelisted(arg1);
    return 1
}

function freeze(bool arg1) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if arg1 == bool(stor9):
        emit 0x7044d253: Array(len=40, data=0x644e6f7420616c6c6f77656420746f20736574207468652073616d652066726f7a656e2073746174, mem[200 len 24])
        return 0
    stor9 = uint8(arg1)
    emit 0x3b00f58c: arg1
    return 1
}

function sub_71ecb4cb(?) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if address(stor2.length) == arg1:
        emit 0x7044d253: Array(len=45, data=0x744973206e6f7420616c6c6f77656420746f20736574207468652073616d65206368616e676520616464726573, mem[205 len 19])
        return 0
    address(stor2.length) = arg1
    emit 0x91bf11d4: arg1
    return 1
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor9:
        return 0
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not arg2:
        emit 0x7044d253: Array(len=19, data='Nothing to withdraw')
        return 0
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with 0, 'Withdraw failed'
    return 1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not stor10[address(arg1)]:
        emit 0x7044d253: Array(len=15, data='Not whitelisted')
        return 0
    if stor11[address(arg1)]:
        emit 0x7044d253: Array(len=28, data='Remove from accredited first')
        return 0
    stor10[address(arg1)] = 0
    emit RemovedFromWhitelist(arg1);
    return 1
}

function setupAmbi2(address arg1) {
    require calldata.size - 4 >= 32
    if ambi2Address:
        return 0
    require ext_code.size(arg1)
    call arg1.claimFor(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.isOwner(address arg1, address arg2) with:
                gas gas_remaining wei
               args this.address, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
    ambi2Address = arg1
    return 1
}

function withdrawERC20(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor9:
        if ambi2Address:
            require ext_code.size(ambi2Address)
            staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
                    gas gas_remaining wei
                   args this.address, 'owner', msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not arg3:
                    emit 0x7044d253: Array(len=19, data='Nothing to withdraw')
                else:
                    require ext_code.size(arg1)
                    call arg1.0xa9059cbb with:
                         gas gas_remaining wei
                        args address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        return 1
                    emit 0x7044d253: Array(len=15, data='Withdraw failed')
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function sub_e7facbfa(?) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'admin', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not stor10[address(arg1)]:
        if not ambi2Address:
            revert with 0, 'Adding to whitelist failed'
        require ext_code.size(ambi2Address)
        staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
                gas gas_remaining wei
               args this.address, 'admin', msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Adding to whitelist failed'
        if stor10[address(arg1)]:
            emit 0x7044d253: Array(len=19, data='Already whitelisted')
            revert with 0, 'Adding to whitelist failed'
        stor10[address(arg1)] = 1
        emit Whitelisted(arg1);
    if stor11[address(arg1)]:
        revert with 0, 'Already accredited'
    stor11[address(arg1)] = 1
    emit 0x1949cae2: arg1
    return 1
}

function deposit(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor9:
        return 0
    if address(stor1.length) != msg.sender:
        emit 0x7044d253: Array(len=40, data=0x304f6e6c79205441415320746f6b656e732061726520616c6c6f77656420666f72206465706f7369, mem[200 len 24])
        return 0
    if not stor10[address(arg1)]:
        emit 0x7044d253: Array(len=47, data=0x734465706f73697420616c6c6f7765642066726f6d2077686974656c697374656420616464726573736573206f6e6c, mem[207 len 17])
        return 0
    if arg2 + totalDeposited[address(arg1)] > 10^11:
        if not stor11[address(arg1)]:
            emit 0x7044d253: Array(len=69, data=0x65557020746f203130302e303030206f6620746f6b656e7320697320616c6c6f77656420746f206465706f73697420666f722077686974656c697374656420616464726573, mem[229 len 27])
            return 0
    if 432419 * 3600 >= block.timestamp:
        emit 0x7044d253: Array(len=35, data=0x654465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d, mem[195 len 29])
        return 0
    if 447059 * 3600 < block.timestamp:
        emit 0x7044d253: Array(len=35, data=0x654465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d, mem[195 len 29])
        return 0
    totalDeposited[address(arg1)] += arg2
    sub_3f0dc426 += arg2
    deposits[stor3.length].field_0 = arg1
    deposits[stor3.length].field_256 = arg2
    deposits[stor3.length].field_512 = block.timestamp
    emit 0x152f596b: address(arg1), arg2, block.timestamp, stor3.length
    stor3.length++
    return 1
}

function sub_6e1983e2(?) payable {
    require ambi2Address
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor9:
        revert with 0, 'Not allowed deposit when frozen'
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445544820646570706f7369742073686f756c64206265206d6f7265207468616e20,
                    mem[198 len 30]
    if 432419 * 3600 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e6572206465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d,
                    mem[205 len 23]
    if 464579 * 3600 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e6572206465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d,
                    mem[205 len 23]
    sub_9a0718de[stor7].field_0 = 0
    sub_9a0718de[stor7].field_256 = 0
    sub_9a0718de[stor7].field_256 = block.timestamp
    sub_9a0718de[stor7].field_512 = msg.value
    sub_9a0718de[stor7].field_768 = msg.value
    emit 0x67401b73: 0, block.timestamp, msg.value
    sub_a3e7c121++
    return 1
}

function addManyToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not ambi2Address:
        return 0
    mem[(32 * arg1.length) + 132] = this.address
    mem[(32 * arg1.length) + 164] = 'admin'
    mem[(32 * arg1.length) + 196] = msg.sender
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'admin', msg.sender
    mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 10
        if not stor10[mem[(32 * idx) + 140 len 20]]:
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 10
            stor10[address(mem[(32 * idx) + 128])] = 1
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            emit Whitelisted(mem[mem[64]]);
        else:
            mem[mem[64]] = 32
            mem[mem[64] + 32] = 19
            mem[mem[64] + 64] = 'Already whitelisted'
            emit 0x7044d253: Array(len=19, data='Already whitelisted')
            require idx < mem[96]
            mem[mem[64]] = mem[(32 * idx) + 140 len 20]
            emit 0x60bbe416: mem[mem[64]]
        if gas_remaining >= 100000:
            idx = idx + 1
            continue 
        return 1
    return 1
}

function _fallback() payable {
    if calldata.size:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x644e6f742076616c696420636f6e74726163742066756e6374696f6e73206973206e6f7420616c6c6f7765,
                    mem[207 len 21]
    require ambi2Address
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if stor9:
        revert with 0, 'Not allowed deposit when frozen'
    if not msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6445544820646570706f7369742073686f756c64206265206d6f7265207468616e20,
                    mem[198 len 30]
    if 432419 * 3600 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e6572206465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d,
                    mem[205 len 23]
    if 464579 * 3600 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e6572206465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d,
                    mem[205 len 23]
    sub_9a0718de[stor7].field_0 = 0
    sub_9a0718de[stor7].field_256 = 0
    sub_9a0718de[stor7].field_256 = block.timestamp
    sub_9a0718de[stor7].field_512 = msg.value
    sub_9a0718de[stor7].field_768 = msg.value
    emit 0x67401b73: 0, block.timestamp, msg.value
    sub_a3e7c121++
}

function sub_93c14794(?) {
    require calldata.size - 4 >= 32
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if not sub_9a0718de[arg1].field_256:
        emit 0x7044d253: Array(len=33, data=0x6550726f7669646564205f6f776e65724465704964206973206e6f742076616c69, mem[449 len 31])
        return 0
    if sub_9a0718de[arg1].field_256 > 438288 * 24 * 3600:
        emit 0x7044d253: Array(len=41, data=0xfe4f6e6c792066697273742079656172206465706f736974732063616e2062652066696e616c697a65, mem[457 len 23])
        return 0
    if block.timestamp < 447059 * 3600:
        emit 0x7044d253: Array(len=65, data=0x794465706f736974732063616e2062652066696e616c697a6564206f6e6c79206166746572205441415320746f6b656e7320617265206e6f742061636365707465, mem[481 len 31])
        return 0
    sub_9a0718de[arg1].field_0 = 0
    sub_9a0718de[arg1].field_256 = 0
    sub_9a0718de[arg1].field_512 = 0
    sub_9a0718de[arg1].field_768 = 0
    if not sub_9a0718de[arg1].field_0:
        call address(stor2.length) with:
           value sub_9a0718de[arg1].field_768 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(sub_9a0718de[arg1].field_0)
        call sub_9a0718de[arg1].field_0.0xa9059cbb with:
             gas gas_remaining wei
            args address(stor2.length), sub_9a0718de[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Change transfer failed'
    emit 0xa67812ee: arg1, sub_9a0718de[arg1].field_0, sub_9a0718de[arg1].field_768
    return 1
}

function sub_0ef55763(?) {
    require calldata.size - 4 >= 64
    if stor9:
        return 0
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'owner', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg2 + ext_call.return_data[0]:
        revert with 0, 'Tokens transfer failed'
    if 432419 * 3600 >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e6572206465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d,
                    mem[205 len 23]
    if 464579 * 3600 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x654f776e6572206465706f736974206973206e6f7420616c6c6f77656420696e20746869732074696d,
                    mem[205 len 23]
    sub_9a0718de[stor7].field_0 = arg1
    sub_9a0718de[stor7].field_256 = block.timestamp
    sub_9a0718de[stor7].field_512 = arg2
    sub_9a0718de[stor7].field_768 = arg2
    emit 0x67401b73: address(arg1), block.timestamp, arg2
    sub_a3e7c121++
    return 1
}

function sub_20d36466(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if ambi2Address:
        mem[(32 * arg1.length) + 132] = this.address
        mem[(32 * arg1.length) + 164] = 'owner'
        mem[(32 * arg1.length) + 196] = msg.sender
        require ext_code.size(ambi2Address)
        staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
                gas gas_remaining wei
               args this.address, 'owner', msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if block.timestamp >= 447072 * 24 * 3600:
                idx = 0
                while idx < arg1.length:
                    _40 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_40] = 0
                    mem[_40 + 32] = 0
                    mem[_40 + 64] = 0
                    mem[_40 + 96] = 0
                    require idx < mem[96]
                    mem[0] = mem[(32 * idx) + 128]
                    mem[32] = 8
                    _45 = sha3(mem[(32 * idx) + 128], 8)
                    _46 = mem[64]
                    mem[64] = mem[64] + 128
                    mem[_46] = sub_9a0718de[mem[(32 * idx) + 128]].field_0
                    mem[_46 + 32] = uint256(stor1[_45])
                    mem[_46 + 64] = uint256(stor2[_45])
                    mem[_46 + 96] = stor3[_45]
                    if 438288 * 24 * 3600 <= uint256(stor1[_45]):
                        if uint256(stor1[_45]) < 447072 * 24 * 3600:
                            _48 = mem[64]
                            mem[64] = mem[64] + 128
                            mem[_48] = mem[_46 + 12 len 20]
                            mem[_48 + 32] = 1609459201
                            mem[_48 + 64] = stor3[_45]
                            mem[_48 + 96] = stor3[_45]
                            mem[0] = sub_a3e7c121
                            mem[32] = 8
                            sub_9a0718de[stor7].field_0 = mem[_48 + 12 len 20]
                            sub_9a0718de[stor7].field_256 = 1609459201
                            sub_9a0718de[stor7].field_512 = stor3[_45]
                            sub_9a0718de[stor7].field_768 = stor3[_45]
                            mem[mem[64]] = mem[_46 + 12 len 20]
                            mem[mem[64] + 32] = 1609459201
                            mem[mem[64] + 64] = stor3[_45]
                            emit 0x67401b73: mem[mem[64]], 1609459201, stor3[_45]
                            sub_a3e7c121++
                            require idx < mem[96]
                            mem[0] = mem[(32 * idx) + 128]
                            mem[32] = 8
                            sub_9a0718de[mem[(32 * idx) + 128]].field_0 = 0
                            sub_9a0718de[mem[(32 * idx) + 128]].field_256 = 0
                            sub_9a0718de[mem[(32 * idx) + 128]].field_512 = 0
                            sub_9a0718de[mem[(32 * idx) + 128]].field_768 = 0
                    idx = idx + 1
                    continue 
                return 1
            emit 0x7044d253: Array(len=50, data=0x644e6f7420706f737369626c6520746f206d696772617465204465706f736974732032206265666f726520646561646c696e, mem[(32 * arg1.length) + 242 len 14])
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_e0a84f1a(?) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor9:
        return 0
    if not ambi2Address:
        return 0
    require ext_code.size(ambi2Address)
    staticcall ambi2Address.hasRole(address arg1, bytes32 arg2, address arg3) with:
            gas gas_remaining wei
           args this.address, 'distributor', msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = 0
    mem[(32 * arg2.length) + 192] = 0
    mem[(32 * arg2.length) + 224] = 0
    mem[0] = arg1
    mem[32] = 8
    mem[64] = (32 * arg2.length) + 384
    mem[(32 * arg2.length) + 256] = sub_9a0718de[arg1].field_0
    mem[(32 * arg2.length) + 288] = sub_9a0718de[arg1].field_256
    mem[(32 * arg2.length) + 320] = sub_9a0718de[arg1].field_512
    mem[(32 * arg2.length) + 352] = sub_9a0718de[arg1].field_768
    if not sub_9a0718de[arg1].field_256:
        emit 0x7044d253: Array(len=33, data=0x6550726f7669646564205f6f776e65724465704964206973206e6f742076616c69, mem[(32 * arg2.length) + 481 len 31])
        return 0
    idx = 0
    while idx < arg2.length:
        _2839 = mem[64]
        mem[64] = mem[64] + 96
        mem[_2839] = 0
        mem[_2839 + 32] = 0
        mem[_2839 + 64] = 0
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        _2842 = sha3(mem[(32 * idx) + 128], 4)
        _2843 = mem[64]
        mem[64] = mem[64] + 96
        mem[_2843] = deposits[mem[(32 * idx) + 128]].field_0
        mem[_2843 + 32] = uint256(stor1[_2842])
        mem[_2843 + 64] = uint256(stor2[_2842])
        require idx < mem[96]
        if not uint256(stor2[_2842]):
            mem[mem[64]] = mem[(32 * idx) + 128]
            emit 0x9cd04be0: mem[mem[64]]
        else:
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
            if deposits[mem[(32 * idx) + 128]][3][arg1].field_0:
                require idx < mem[96]
                mem[mem[64]] = mem[(32 * idx) + 128]
                emit 0x5e80c4f5: mem[mem[64]]
            else:
                mem[0] = mem[_2843 + 12 len 20]
                mem[32] = 10
                if not stor10[mem[0]]:
                    require idx < mem[96]
                    _2861 = mem[_2843]
                    mem[mem[64]] = mem[(32 * idx) + 128]
                    mem[mem[64] + 32] = address(_2861)
                    emit 0xfdf6acd2: mem[mem[64]], address(_2861)
                else:
                    if mem[(32 * arg2.length) + 288] >= 447072 * 24 * 3600:
                        _2865 = mem[(32 * arg2.length) + 320]
                        require sub_3f0dc426
                        if not mem[(32 * arg2.length) + 268 len 20]:
                            call mem[_2843 + 12 len 20] with:
                               value mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / sub_3f0dc426 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                require idx < mem[96]
                                _2883 = mem[(32 * arg2.length) + 256]
                                _2884 = mem[_2843]
                                mem[mem[64]] = mem[(32 * idx) + 128]
                                mem[mem[64] + 32] = address(_2883)
                                mem[mem[64] + 64] = address(_2884)
                                mem[mem[64] + 96] = _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                                emit 0x87ddc7a5: mem[mem[64]], address(_2883), address(_2884), _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                            else:
                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / sub_3f0dc426)
                                require idx < mem[96]
                                mem[0] = arg1
                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                require idx < mem[96]
                                _2895 = mem[(32 * arg2.length) + 256]
                                _2896 = mem[_2843]
                                mem[mem[64]] = mem[(32 * idx) + 128]
                                mem[mem[64] + 32] = address(_2895)
                                mem[mem[64] + 64] = address(_2896)
                                mem[mem[64] + 96] = _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                                emit 0xd547b31c: mem[mem[64]], address(_2895), address(_2896), _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                        else:
                            _2868 = mem[(32 * arg2.length) + 256]
                            mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                            mem[mem[64] + 36] = _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                            require ext_code.size(address(_2868))
                            call address(_2868).0xa9059cbb with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4], _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < mem[96]
                                _2900 = mem[(32 * arg2.length) + 256]
                                _2901 = mem[_2843]
                                mem[mem[64]] = mem[(32 * idx) + 128]
                                mem[mem[64] + 32] = address(_2900)
                                mem[mem[64] + 64] = address(_2901)
                                mem[mem[64] + 96] = _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                                emit 0x87ddc7a5: mem[mem[64]], address(_2900), address(_2901), _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                            else:
                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2865 * uint256(stor1[_2842]) / sub_3f0dc426)
                                require idx < mem[96]
                                mem[0] = arg1
                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                require idx < mem[96]
                                _2909 = mem[(32 * arg2.length) + 256]
                                _2910 = mem[_2843]
                                mem[mem[64]] = mem[(32 * idx) + 128]
                                mem[mem[64] + 32] = address(_2909)
                                mem[mem[64] + 64] = address(_2910)
                                mem[mem[64] + 96] = _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                                emit 0xd547b31c: mem[mem[64]], address(_2909), address(_2910), _2865 * uint256(stor1[_2842]) / sub_3f0dc426
                    else:
                        _2866 = mem[(32 * arg2.length) + 288]
                        if mem[(32 * arg2.length) + 288] < 438288 * 24 * 3600:
                            if uint256(stor2[_2842]) < 438288 * 24 * 3600:
                                _2914 = mem[(32 * arg2.length) + 320]
                                if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                    if not mem[(32 * arg2.length) + 268 len 20]:
                                        call mem[_2843 + 12 len 20] with:
                                           value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            require idx < mem[96]
                                            _3118 = mem[(32 * arg2.length) + 256]
                                            _3119 = mem[_2843]
                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                            mem[mem[64] + 32] = address(_3118)
                                            mem[mem[64] + 64] = address(_3119)
                                            mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                            emit 0x87ddc7a5: mem[mem[64]], address(_3118), address(_3119), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                            require idx < mem[96]
                                            mem[0] = arg1
                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                            require idx < mem[96]
                                            _3207 = mem[(32 * arg2.length) + 256]
                                            _3208 = mem[_2843]
                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                            mem[mem[64] + 32] = address(_3207)
                                            mem[mem[64] + 64] = address(_3208)
                                            mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                            emit 0xd547b31c: mem[mem[64]], address(_3207), address(_3208), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                    else:
                                        _2976 = mem[(32 * arg2.length) + 256]
                                        mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                        mem[mem[64] + 36] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                        require ext_code.size(address(_2976))
                                        call address(_2976).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not ext_call.return_data[0]:
                                            require idx < mem[96]
                                            _3303 = mem[(32 * arg2.length) + 256]
                                            _3304 = mem[_2843]
                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                            mem[mem[64] + 32] = address(_3303)
                                            mem[mem[64] + 64] = address(_3304)
                                            mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                            emit 0x87ddc7a5: mem[mem[64]], address(_3303), address(_3304), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            require idx < mem[96]
                                            mem[0] = arg1
                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                            require idx < mem[96]
                                            _3444 = mem[(32 * arg2.length) + 256]
                                            _3445 = mem[_2843]
                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                            mem[mem[64] + 32] = address(_3444)
                                            mem[mem[64] + 64] = address(_3445)
                                            mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                            emit 0xd547b31c: mem[mem[64]], address(_3444), address(_3445), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                else:
                                    _2921 = mem[(32 * arg2.length) + 320]
                                    if not mem[(32 * arg2.length) + 268 len 20]:
                                        call mem[_2843 + 12 len 20] with:
                                           value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                             gas 2300 * is_zero(value) wei
                                        if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                            if not ext_call.success:
                                                require idx < mem[96]
                                                _3192 = mem[(32 * arg2.length) + 256]
                                                _3193 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3192)
                                                mem[mem[64] + 64] = address(_3193)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3192), address(_3193), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    require idx < mem[96]
                                                    _3900 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3900)
                                                    mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    emit 0x97d07c25: mem[mem[64]], address(_3900), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3289 = mem[(32 * arg2.length) + 256]
                                                _3290 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3289)
                                                mem[mem[64] + 64] = address(_3290)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3289), address(_3290), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    require idx < mem[96]
                                                    _4172 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4172)
                                                    mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    emit 0x97d07c25: mem[mem[64]], address(_4172), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                        else:
                                            call address(stor2.length) with:
                                               value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                require idx < mem[96]
                                                _3294 = mem[(32 * arg2.length) + 256]
                                                _3295 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3294)
                                                mem[mem[64] + 64] = address(_3295)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3294), address(_3295), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _4176 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4176)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4176), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2921 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        _4180 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4180)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0xa67812ee: mem[mem[64]], address(_4180), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3439 = mem[(32 * arg2.length) + 256]
                                                _3440 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3439)
                                                mem[mem[64] + 64] = address(_3440)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3439), address(_3440), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _4419 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4419)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4419), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2921 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        _4423 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4423)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0xa67812ee: mem[mem[64]], address(_4423), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                    else:
                                        _2991 = mem[(32 * arg2.length) + 256]
                                        mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                        mem[mem[64] + 36] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                        require ext_code.size(address(_2991))
                                        call address(_2991).0xa9059cbb with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4], 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                            if not ext_call.return_data[0]:
                                                require idx < mem[96]
                                                _3429 = mem[(32 * arg2.length) + 256]
                                                _3430 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3429)
                                                mem[mem[64] + 64] = address(_3430)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3429), address(_3430), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    require idx < mem[96]
                                                    _4405 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4405)
                                                    mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    emit 0x97d07c25: mem[mem[64]], address(_4405), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3639 = mem[(32 * arg2.length) + 256]
                                                _3640 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3639)
                                                mem[mem[64] + 64] = address(_3640)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3639), address(_3640), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    require idx < mem[96]
                                                    _4603 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4603)
                                                    mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    emit 0x97d07c25: mem[mem[64]], address(_4603), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                        else:
                                            _3188 = mem[(32 * arg2.length) + 256]
                                            mem[mem[64] + 4] = address(stor2.length)
                                            mem[mem[64] + 36] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            require ext_code.size(address(_3188))
                                            call address(_3188).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args address(stor2.length), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                require idx < mem[96]
                                                _4410 = mem[(32 * arg2.length) + 256]
                                                _4411 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_4410)
                                                mem[mem[64] + 64] = address(_4411)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_4410), address(_4411), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _5160 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5160)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_5160), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2921 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        _5164 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5164)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0xa67812ee: mem[mem[64]], address(_5164), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _4607 = mem[(32 * arg2.length) + 256]
                                                _4608 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_4607)
                                                mem[mem[64] + 64] = address(_4608)
                                                mem[mem[64] + 96] = 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_4607), address(_4608), 366 * _2914 * uint256(stor1[_2842]) / 2981436285259668
                                                if (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _5298 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5298)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_5298), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2921 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        _5302 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5302)
                                                        mem[mem[64] + 64] = (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0xa67812ee: mem[mem[64]], address(_5302), (_2921 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2914 * uint256(stor1[_2842]) / 2981436285259668)
                            else:
                                if uint256(stor2[_2842]) >= 447072 * 24 * 3600:
                                    _2917 = mem[(32 * arg2.length) + 320]
                                    if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                        if not mem[(32 * arg2.length) + 268 len 20]:
                                            call mem[_2843 + 12 len 20] with:
                                               value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                require idx < mem[96]
                                                _3216 = mem[(32 * arg2.length) + 256]
                                                _3217 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3216)
                                                mem[mem[64] + 64] = address(_3217)
                                                mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3216), address(_3217), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3330 = mem[(32 * arg2.length) + 256]
                                                _3331 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3330)
                                                mem[mem[64] + 64] = address(_3331)
                                                mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3330), address(_3331), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            _2998 = mem[(32 * arg2.length) + 256]
                                            mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                            mem[mem[64] + 36] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                            require ext_code.size(address(_2998))
                                            call address(_2998).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                require idx < mem[96]
                                                _3466 = mem[(32 * arg2.length) + 256]
                                                _3467 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3466)
                                                mem[mem[64] + 64] = address(_3467)
                                                mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3466), address(_3467), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3661 = mem[(32 * arg2.length) + 256]
                                                _3662 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3661)
                                                mem[mem[64] + 64] = address(_3662)
                                                mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3661), address(_3662), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                    else:
                                        _2931 = mem[(32 * arg2.length) + 320]
                                        if not mem[(32 * arg2.length) + 268 len 20]:
                                            call mem[_2843 + 12 len 20] with:
                                               value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3315 = mem[(32 * arg2.length) + 256]
                                                    _3316 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3315)
                                                    mem[mem[64] + 64] = address(_3316)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3315), address(_3316), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4187 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4187)
                                                        mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4187), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3452 = mem[(32 * arg2.length) + 256]
                                                    _3453 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3452)
                                                    mem[mem[64] + 64] = address(_3453)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3452), address(_3453), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4431 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4431)
                                                        mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4431), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                call address(stor2.length) with:
                                                   value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3457 = mem[(32 * arg2.length) + 256]
                                                    _3458 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3457)
                                                    mem[mem[64] + 64] = address(_3458)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3457), address(_3458), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4435 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4435)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4435), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2931 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _4439 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4439)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_4439), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3656 = mem[(32 * arg2.length) + 256]
                                                    _3657 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3656)
                                                    mem[mem[64] + 64] = address(_3657)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3656), address(_3657), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4626 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4626)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4626), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2931 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _4630 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4630)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_4630), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                        else:
                                            _3018 = mem[(32 * arg2.length) + 256]
                                            mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                            mem[mem[64] + 36] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                            require ext_code.size(address(_3018))
                                            call address(_3018).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _3646 = mem[(32 * arg2.length) + 256]
                                                    _3647 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3646)
                                                    mem[mem[64] + 64] = address(_3647)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3646), address(_3647), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4612 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4612)
                                                        mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4612), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3908 = mem[(32 * arg2.length) + 256]
                                                    _3909 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3908)
                                                    mem[mem[64] + 64] = address(_3909)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3908), address(_3909), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4786 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4786)
                                                        mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4786), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                _3311 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = address(stor2.length)
                                                mem[mem[64] + 36] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                require ext_code.size(address(_3311))
                                                call address(_3311).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(stor2.length), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _4617 = mem[(32 * arg2.length) + 256]
                                                    _4618 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4617)
                                                    mem[mem[64] + 64] = address(_4618)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_4617), address(_4618), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5306 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5306)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5306), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2931 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _5310 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5310)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_5310), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _4790 = mem[(32 * arg2.length) + 256]
                                                    _4791 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4790)
                                                    mem[mem[64] + 64] = address(_4791)
                                                    mem[mem[64] + 96] = 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_4790), address(_4791), 366 * _2917 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5386 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5386)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5386), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2931 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _5390 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5390)
                                                            mem[mem[64] + 64] = (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_5390), (_2931 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2917 * uint256(stor1[_2842]) / 2981436285259668)
                                else:
                                    if 366 >= -(uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600) + 365:
                                        _2924 = mem[(32 * arg2.length) + 320]
                                        if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value (365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3339 = mem[(32 * arg2.length) + 256]
                                                    _3340 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3339)
                                                    mem[mem[64] + 64] = address(_3340)
                                                    mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3339), address(_3340), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3493 = mem[(32 * arg2.length) + 256]
                                                    _3494 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3493)
                                                    mem[mem[64] + 64] = address(_3494)
                                                    mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3493), address(_3494), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                            else:
                                                _3025 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                require ext_code.size(address(_3025))
                                                call address(_3025).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _3683 = mem[(32 * arg2.length) + 256]
                                                    _3684 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3683)
                                                    mem[mem[64] + 64] = address(_3684)
                                                    mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3683), address(_3684), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3930 = mem[(32 * arg2.length) + 256]
                                                    _3931 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3930)
                                                    mem[mem[64] + 64] = address(_3931)
                                                    mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3930), address(_3931), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                        else:
                                            _2946 = mem[(32 * arg2.length) + 320]
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value (365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3478 = mem[(32 * arg2.length) + 256]
                                                        _3479 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3478)
                                                        mem[mem[64] + 64] = address(_3479)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3478), address(_3479), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4446 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4446)
                                                            mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4446), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3669 = mem[(32 * arg2.length) + 256]
                                                        _3670 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3669)
                                                        mem[mem[64] + 64] = address(_3670)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3669), address(_3670), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4638 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4638)
                                                            mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4638), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    call address(stor2.length) with:
                                                       value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3674 = mem[(32 * arg2.length) + 256]
                                                        _3675 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3674)
                                                        mem[mem[64] + 64] = address(_3675)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3674), address(_3675), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4642 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4642)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4642), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2946 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4646 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4646)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4646), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3925 = mem[(32 * arg2.length) + 256]
                                                        _3926 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3925)
                                                        mem[mem[64] + 64] = address(_3926)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3925), address(_3926), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4809 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4809)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4809), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2946 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4813 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4813)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4813), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                            else:
                                                _3062 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                require ext_code.size(address(_3062))
                                                call address(_3062).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _3915 = mem[(32 * arg2.length) + 256]
                                                        _3916 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3915)
                                                        mem[mem[64] + 64] = address(_3916)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3915), address(_3916), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4795 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4795)
                                                            mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4795), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4195 = mem[(32 * arg2.length) + 256]
                                                        _4196 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4195)
                                                        mem[mem[64] + 64] = address(_4196)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4195), address(_4196), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4980 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4980)
                                                            mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4980), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    _3474 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = address(stor2.length)
                                                    mem[mem[64] + 36] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    require ext_code.size(address(_3474))
                                                    call address(_3474).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(stor2.length), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4800 = mem[(32 * arg2.length) + 256]
                                                        _4801 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4800)
                                                        mem[mem[64] + 64] = address(_4801)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4800), address(_4801), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5394 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5394)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5394), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2946 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5398 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5398)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5398), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4984 = mem[(32 * arg2.length) + 256]
                                                        _4985 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4984)
                                                        mem[mem[64] + 64] = address(_4985)
                                                        mem[mem[64] + 96] = (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4984), address(_4985), (365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5456 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5456)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5456), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2946 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5460 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5460)
                                                                mem[mem[64] + 64] = (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5460), (_2946 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2924 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2924 * uint256(stor1[_2842])) / 2981436285259668)
                                    else:
                                        _2934 = mem[(32 * arg2.length) + 320]
                                        if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3502 = mem[(32 * arg2.length) + 256]
                                                    _3503 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3502)
                                                    mem[mem[64] + 64] = address(_3503)
                                                    mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3502), address(_3503), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3710 = mem[(32 * arg2.length) + 256]
                                                    _3711 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3710)
                                                    mem[mem[64] + 64] = address(_3711)
                                                    mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3710), address(_3711), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                _3069 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                require ext_code.size(address(_3069))
                                                call address(_3069).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _3952 = mem[(32 * arg2.length) + 256]
                                                    _3953 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3952)
                                                    mem[mem[64] + 64] = address(_3953)
                                                    mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3952), address(_3953), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _4217 = mem[(32 * arg2.length) + 256]
                                                    _4218 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4217)
                                                    mem[mem[64] + 64] = address(_4218)
                                                    mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_4217), address(_4218), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            _2963 = mem[(32 * arg2.length) + 320]
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3695 = mem[(32 * arg2.length) + 256]
                                                        _3696 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3695)
                                                        mem[mem[64] + 64] = address(_3696)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3695), address(_3696), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4653 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4653)
                                                            mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4653), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3938 = mem[(32 * arg2.length) + 256]
                                                        _3939 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3938)
                                                        mem[mem[64] + 64] = address(_3939)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3938), address(_3939), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4821 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4821)
                                                            mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4821), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    call address(stor2.length) with:
                                                       value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3943 = mem[(32 * arg2.length) + 256]
                                                        _3944 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3943)
                                                        mem[mem[64] + 64] = address(_3944)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3943), address(_3944), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4825 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4825)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4825), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2963 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4829 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4829)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4829), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4212 = mem[(32 * arg2.length) + 256]
                                                        _4213 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4212)
                                                        mem[mem[64] + 64] = address(_4213)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4212), address(_4213), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _5003 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5003)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5003), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2963 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5007 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5007)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5007), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                _3133 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                require ext_code.size(address(_3133))
                                                call address(_3133).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4202 = mem[(32 * arg2.length) + 256]
                                                        _4203 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4202)
                                                        mem[mem[64] + 64] = address(_4203)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4202), address(_4203), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4989 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4989)
                                                            mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4989), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4454 = mem[(32 * arg2.length) + 256]
                                                        _4455 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4454)
                                                        mem[mem[64] + 64] = address(_4455)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4454), address(_4455), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _5174 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5174)
                                                            mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5174), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    _3691 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = address(stor2.length)
                                                    mem[mem[64] + 36] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require ext_code.size(address(_3691))
                                                    call address(_3691).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(stor2.length), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4994 = mem[(32 * arg2.length) + 256]
                                                        _4995 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4994)
                                                        mem[mem[64] + 64] = address(_4995)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4994), address(_4995), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5464 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5464)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5464), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2963 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5468 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5468)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5468), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _5178 = mem[(32 * arg2.length) + 256]
                                                        _5179 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5178)
                                                        mem[mem[64] + 64] = address(_5179)
                                                        mem[mem[64] + 96] = 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_5178), address(_5179), 366 * _2934 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5533 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5533)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5533), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2963 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5537 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5537)
                                                                mem[mem[64] + 64] = (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5537), (_2963 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2934 * uint256(stor1[_2842]) / 2981436285259668)
                        else:
                            if mem[(32 * arg2.length) + 288] >= 447072 * 24 * 3600:
                                if uint256(stor2[_2842]) < 438288 * 24 * 3600:
                                    _2919 = mem[(32 * arg2.length) + 320]
                                    if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                        if not mem[(32 * arg2.length) + 268 len 20]:
                                            call mem[_2843 + 12 len 20] with:
                                               value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                require idx < mem[96]
                                                _3236 = mem[(32 * arg2.length) + 256]
                                                _3237 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3236)
                                                mem[mem[64] + 64] = address(_3237)
                                                mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3236), address(_3237), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3371 = mem[(32 * arg2.length) + 256]
                                                _3372 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3371)
                                                mem[mem[64] + 64] = address(_3372)
                                                mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3371), address(_3372), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            _3006 = mem[(32 * arg2.length) + 256]
                                            mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                            mem[mem[64] + 36] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                            require ext_code.size(address(_3006))
                                            call address(_3006).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not ext_call.return_data[0]:
                                                require idx < mem[96]
                                                _3528 = mem[(32 * arg2.length) + 256]
                                                _3529 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3528)
                                                mem[mem[64] + 64] = address(_3529)
                                                mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0x87ddc7a5: mem[mem[64]], address(_3528), address(_3529), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                require idx < mem[96]
                                                mem[0] = arg1
                                                mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                require idx < mem[96]
                                                _3730 = mem[(32 * arg2.length) + 256]
                                                _3731 = mem[_2843]
                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                mem[mem[64] + 32] = address(_3730)
                                                mem[mem[64] + 64] = address(_3731)
                                                mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                emit 0xd547b31c: mem[mem[64]], address(_3730), address(_3731), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                    else:
                                        _2936 = mem[(32 * arg2.length) + 320]
                                        if not mem[(32 * arg2.length) + 268 len 20]:
                                            call mem[_2843 + 12 len 20] with:
                                               value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3356 = mem[(32 * arg2.length) + 256]
                                                    _3357 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3356)
                                                    mem[mem[64] + 64] = address(_3357)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3356), address(_3357), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4222 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4222)
                                                        mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4222), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3514 = mem[(32 * arg2.length) + 256]
                                                    _3515 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3514)
                                                    mem[mem[64] + 64] = address(_3515)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3514), address(_3515), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4465 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4465)
                                                        mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4465), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                call address(stor2.length) with:
                                                   value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3519 = mem[(32 * arg2.length) + 256]
                                                    _3520 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3519)
                                                    mem[mem[64] + 64] = address(_3520)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3519), address(_3520), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4469 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4469)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4469), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2936 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _4473 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4473)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_4473), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3725 = mem[(32 * arg2.length) + 256]
                                                    _3726 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3725)
                                                    mem[mem[64] + 64] = address(_3726)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3725), address(_3726), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4675 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4675)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4675), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2936 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _4679 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4679)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_4679), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                        else:
                                            _3032 = mem[(32 * arg2.length) + 256]
                                            mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                            mem[mem[64] + 36] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                            require ext_code.size(address(_3032))
                                            call address(_3032).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4], 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            if not (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _3715 = mem[(32 * arg2.length) + 256]
                                                    _3716 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3715)
                                                    mem[mem[64] + 64] = address(_3716)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3715), address(_3716), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4661 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4661)
                                                        mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4661), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3961 = mem[(32 * arg2.length) + 256]
                                                    _3962 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3961)
                                                    mem[mem[64] + 64] = address(_3962)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3961), address(_3962), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        require idx < mem[96]
                                                        _4836 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4836)
                                                        mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        emit 0x97d07c25: mem[mem[64]], address(_4836), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                _3352 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = address(stor2.length)
                                                mem[mem[64] + 36] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                require ext_code.size(address(_3352))
                                                call address(_3352).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args address(stor2.length), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _4666 = mem[(32 * arg2.length) + 256]
                                                    _4667 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4666)
                                                    mem[mem[64] + 64] = address(_4667)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_4666), address(_4667), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5320 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5320)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5320), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2936 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _5324 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5324)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_5324), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _4840 = mem[(32 * arg2.length) + 256]
                                                    _4841 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4840)
                                                    mem[mem[64] + 64] = address(_4841)
                                                    mem[mem[64] + 96] = 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_4840), address(_4841), 366 * _2919 * uint256(stor1[_2842]) / 2981436285259668
                                                    if (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5408 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5408)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5408), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2936 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            _5412 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5412)
                                                            mem[mem[64] + 64] = (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0xa67812ee: mem[mem[64]], address(_5412), (_2936 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2919 * uint256(stor1[_2842]) / 2981436285259668)
                                else:
                                    if uint256(stor2[_2842]) >= 447072 * 24 * 3600:
                                        _2927 = mem[(32 * arg2.length) + 320]
                                        if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3380 = mem[(32 * arg2.length) + 256]
                                                    _3381 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3380)
                                                    mem[mem[64] + 64] = address(_3381)
                                                    mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3380), address(_3381), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3555 = mem[(32 * arg2.length) + 256]
                                                    _3556 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3555)
                                                    mem[mem[64] + 64] = address(_3556)
                                                    mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3555), address(_3556), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                _3039 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                require ext_code.size(address(_3039))
                                                call address(_3039).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _3752 = mem[(32 * arg2.length) + 256]
                                                    _3753 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3752)
                                                    mem[mem[64] + 64] = address(_3753)
                                                    mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3752), address(_3753), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3983 = mem[(32 * arg2.length) + 256]
                                                    _3984 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3983)
                                                    mem[mem[64] + 64] = address(_3984)
                                                    mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3983), address(_3984), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            _2949 = mem[(32 * arg2.length) + 320]
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3540 = mem[(32 * arg2.length) + 256]
                                                        _3541 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3540)
                                                        mem[mem[64] + 64] = address(_3541)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3540), address(_3541), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4480 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4480)
                                                            mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4480), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3738 = mem[(32 * arg2.length) + 256]
                                                        _3739 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3738)
                                                        mem[mem[64] + 64] = address(_3739)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3738), address(_3739), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4687 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4687)
                                                            mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4687), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    call address(stor2.length) with:
                                                       value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3743 = mem[(32 * arg2.length) + 256]
                                                        _3744 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3743)
                                                        mem[mem[64] + 64] = address(_3744)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3743), address(_3744), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4691 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4691)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4691), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2949 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4695 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4695)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4695), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3978 = mem[(32 * arg2.length) + 256]
                                                        _3979 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3978)
                                                        mem[mem[64] + 64] = address(_3979)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3978), address(_3979), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4859 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4859)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4859), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2949 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4863 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4863)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4863), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                _3077 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                require ext_code.size(address(_3077))
                                                call address(_3077).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _3968 = mem[(32 * arg2.length) + 256]
                                                        _3969 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3968)
                                                        mem[mem[64] + 64] = address(_3969)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3968), address(_3969), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4845 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4845)
                                                            mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4845), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4230 = mem[(32 * arg2.length) + 256]
                                                        _4231 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4230)
                                                        mem[mem[64] + 64] = address(_4231)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4230), address(_4231), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _5011 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5011)
                                                            mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5011), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    _3536 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = address(stor2.length)
                                                    mem[mem[64] + 36] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require ext_code.size(address(_3536))
                                                    call address(_3536).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(stor2.length), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4850 = mem[(32 * arg2.length) + 256]
                                                        _4851 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4850)
                                                        mem[mem[64] + 64] = address(_4851)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4850), address(_4851), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5416 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5416)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5416), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2949 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5420 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5420)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5420), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _5015 = mem[(32 * arg2.length) + 256]
                                                        _5016 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5015)
                                                        mem[mem[64] + 64] = address(_5016)
                                                        mem[mem[64] + 96] = 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_5015), address(_5016), 366 * _2927 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5475 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5475)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5475), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2949 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5479 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5479)
                                                                mem[mem[64] + 64] = (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5479), (_2949 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2927 * uint256(stor1[_2842]) / 2981436285259668)
                                    else:
                                        if 366 >= -(uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600) + 365:
                                            _2939 = mem[(32 * arg2.length) + 320]
                                            if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value (365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3564 = mem[(32 * arg2.length) + 256]
                                                        _3565 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3564)
                                                        mem[mem[64] + 64] = address(_3565)
                                                        mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3564), address(_3565), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3779 = mem[(32 * arg2.length) + 256]
                                                        _3780 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3779)
                                                        mem[mem[64] + 64] = address(_3780)
                                                        mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3779), address(_3780), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    _3084 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                    require ext_code.size(address(_3084))
                                                    call address(_3084).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4005 = mem[(32 * arg2.length) + 256]
                                                        _4006 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4005)
                                                        mem[mem[64] + 64] = address(_4006)
                                                        mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4005), address(_4006), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4252 = mem[(32 * arg2.length) + 256]
                                                        _4253 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4252)
                                                        mem[mem[64] + 64] = address(_4253)
                                                        mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4252), address(_4253), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                            else:
                                                _2965 = mem[(32 * arg2.length) + 320]
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value (365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _3764 = mem[(32 * arg2.length) + 256]
                                                            _3765 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_3764)
                                                            mem[mem[64] + 64] = address(_3765)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_3764), address(_3765), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4702 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4702)
                                                                mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4702), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _3991 = mem[(32 * arg2.length) + 256]
                                                            _3992 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_3991)
                                                            mem[mem[64] + 64] = address(_3992)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_3991), address(_3992), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4871 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4871)
                                                                mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4871), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        call address(stor2.length) with:
                                                           value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _3996 = mem[(32 * arg2.length) + 256]
                                                            _3997 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_3996)
                                                            mem[mem[64] + 64] = address(_3997)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_3996), address(_3997), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _4875 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_4875)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_4875), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2965 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _4879 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_4879)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_4879), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4247 = mem[(32 * arg2.length) + 256]
                                                            _4248 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4247)
                                                            mem[mem[64] + 64] = address(_4248)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4247), address(_4248), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5034 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5034)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5034), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2965 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5038 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5038)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5038), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    _3146 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                    require ext_code.size(address(_3146))
                                                    call address(_3146).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _4237 = mem[(32 * arg2.length) + 256]
                                                            _4238 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4237)
                                                            mem[mem[64] + 64] = address(_4238)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4237), address(_4238), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5020 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5020)
                                                                mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5020), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4488 = mem[(32 * arg2.length) + 256]
                                                            _4489 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4488)
                                                            mem[mem[64] + 64] = address(_4489)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4488), address(_4489), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5186 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5186)
                                                                mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5186), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        _3760 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64] + 4] = address(stor2.length)
                                                        mem[mem[64] + 36] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require ext_code.size(address(_3760))
                                                        call address(_3760).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor2.length), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5025 = mem[(32 * arg2.length) + 256]
                                                            _5026 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5025)
                                                            mem[mem[64] + 64] = address(_5026)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_5025), address(_5026), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5483 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5483)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5483), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2965 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5487 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5487)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5487), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _5190 = mem[(32 * arg2.length) + 256]
                                                            _5191 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5190)
                                                            mem[mem[64] + 64] = address(_5191)
                                                            mem[mem[64] + 96] = (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_5190), address(_5191), (365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5541 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5541)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5541), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2965 * uint256(stor1[_2842]) / 8146000779398) + ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5545 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5545)
                                                                    mem[mem[64] + 64] = (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5545), (_2965 * uint256(stor1[_2842]) / 8146000779398) - ((365 * _2939 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2939 * uint256(stor1[_2842])) / 2981436285259668)
                                        else:
                                            _2952 = mem[(32 * arg2.length) + 320]
                                            if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3788 = mem[(32 * arg2.length) + 256]
                                                        _3789 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3788)
                                                        mem[mem[64] + 64] = address(_3789)
                                                        mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3788), address(_3789), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4032 = mem[(32 * arg2.length) + 256]
                                                        _4033 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4032)
                                                        mem[mem[64] + 64] = address(_4033)
                                                        mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4032), address(_4033), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    _3153 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                    require ext_code.size(address(_3153))
                                                    call address(_3153).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4274 = mem[(32 * arg2.length) + 256]
                                                        _4275 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4274)
                                                        mem[mem[64] + 64] = address(_4275)
                                                        mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4274), address(_4275), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4510 = mem[(32 * arg2.length) + 256]
                                                        _4511 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4510)
                                                        mem[mem[64] + 64] = address(_4511)
                                                        mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4510), address(_4511), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                _2985 = mem[(32 * arg2.length) + 320]
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4017 = mem[(32 * arg2.length) + 256]
                                                            _4018 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4017)
                                                            mem[mem[64] + 64] = address(_4018)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4017), address(_4018), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4886 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4886)
                                                                mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4886), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4260 = mem[(32 * arg2.length) + 256]
                                                            _4261 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4260)
                                                            mem[mem[64] + 64] = address(_4261)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4260), address(_4261), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5046 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5046)
                                                                mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5046), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        call address(stor2.length) with:
                                                           value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4265 = mem[(32 * arg2.length) + 256]
                                                            _4266 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4265)
                                                            mem[mem[64] + 64] = address(_4266)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4265), address(_4266), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5050 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5050)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5050), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2985 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5054 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5054)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5054), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4505 = mem[(32 * arg2.length) + 256]
                                                            _4506 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4505)
                                                            mem[mem[64] + 64] = address(_4506)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4505), address(_4506), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5209 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5209)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5209), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2985 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5213 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5213)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5213), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    _3251 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                    require ext_code.size(address(_3251))
                                                    call address(_3251).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _4495 = mem[(32 * arg2.length) + 256]
                                                            _4496 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4495)
                                                            mem[mem[64] + 64] = address(_4496)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4495), address(_4496), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5195 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5195)
                                                                mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5195), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4710 = mem[(32 * arg2.length) + 256]
                                                            _4711 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4710)
                                                            mem[mem[64] + 64] = address(_4711)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4710), address(_4711), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5334 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5334)
                                                                mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5334), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        _4013 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64] + 4] = address(stor2.length)
                                                        mem[mem[64] + 36] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require ext_code.size(address(_4013))
                                                        call address(_4013).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor2.length), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5200 = mem[(32 * arg2.length) + 256]
                                                            _5201 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5200)
                                                            mem[mem[64] + 64] = address(_5201)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_5200), address(_5201), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5549 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5549)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5549), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2985 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5553 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5553)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5553), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _5338 = mem[(32 * arg2.length) + 256]
                                                            _5339 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5338)
                                                            mem[mem[64] + 64] = address(_5339)
                                                            mem[mem[64] + 96] = 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_5338), address(_5339), 366 * _2952 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5601 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5601)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5601), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2985 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5605 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5605)
                                                                    mem[mem[64] + 64] = (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5605), (_2985 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2952 * uint256(stor1[_2842]) / 2981436285259668)
                            else:
                                if uint256(stor2[_2842]) < 438288 * 24 * 3600:
                                    if 366 >= (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600) + 367:
                                        _2929 = mem[(32 * arg2.length) + 320]
                                        if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value (367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3400 = mem[(32 * arg2.length) + 256]
                                                    _3401 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3400)
                                                    mem[mem[64] + 64] = address(_3401)
                                                    mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3400), address(_3401), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3596 = mem[(32 * arg2.length) + 256]
                                                    _3597 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3596)
                                                    mem[mem[64] + 64] = address(_3597)
                                                    mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3596), address(_3597), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                            else:
                                                _3047 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                require ext_code.size(address(_3047))
                                                call address(_3047).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _3814 = mem[(32 * arg2.length) + 256]
                                                    _3815 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3814)
                                                    mem[mem[64] + 64] = address(_3815)
                                                    mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3814), address(_3815), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _4052 = mem[(32 * arg2.length) + 256]
                                                    _4053 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4052)
                                                    mem[mem[64] + 64] = address(_4053)
                                                    mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_4052), address(_4053), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                        else:
                                            _2954 = mem[(32 * arg2.length) + 320]
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value (367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3581 = mem[(32 * arg2.length) + 256]
                                                        _3582 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3581)
                                                        mem[mem[64] + 64] = address(_3582)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3581), address(_3582), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4515 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4515)
                                                            mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4515), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3800 = mem[(32 * arg2.length) + 256]
                                                        _3801 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3800)
                                                        mem[mem[64] + 64] = address(_3801)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3800), address(_3801), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4721 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4721)
                                                            mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4721), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    call address(stor2.length) with:
                                                       value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3805 = mem[(32 * arg2.length) + 256]
                                                        _3806 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3805)
                                                        mem[mem[64] + 64] = address(_3806)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3805), address(_3806), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4725 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4725)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4725), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2954 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4729 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4729)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4729), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4047 = mem[(32 * arg2.length) + 256]
                                                        _4048 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4047)
                                                        mem[mem[64] + 64] = address(_4048)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4047), address(_4048), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4908 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4908)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4908), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2954 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4912 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4912)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4912), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                            else:
                                                _3091 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                require ext_code.size(address(_3091))
                                                call address(_3091).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4037 = mem[(32 * arg2.length) + 256]
                                                        _4038 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4037)
                                                        mem[mem[64] + 64] = address(_4038)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4037), address(_4038), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4894 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4894)
                                                            mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4894), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4283 = mem[(32 * arg2.length) + 256]
                                                        _4284 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4283)
                                                        mem[mem[64] + 64] = address(_4284)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4283), address(_4284), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _5061 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5061)
                                                            mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5061), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    _3577 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = address(stor2.length)
                                                    mem[mem[64] + 36] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    require ext_code.size(address(_3577))
                                                    call address(_3577).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(stor2.length), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4899 = mem[(32 * arg2.length) + 256]
                                                        _4900 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4899)
                                                        mem[mem[64] + 64] = address(_4900)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4899), address(_4900), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5430 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5430)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5430), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2954 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5434 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5434)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5434), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _5065 = mem[(32 * arg2.length) + 256]
                                                        _5066 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5065)
                                                        mem[mem[64] + 64] = address(_5066)
                                                        mem[mem[64] + 96] = (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_5065), address(_5066), (367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668
                                                        if (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5497 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5497)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5497), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2954 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5501 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5501)
                                                                mem[mem[64] + 64] = (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5501), (_2954 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2929 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2929 * uint256(stor1[_2842])) / 2981436285259668)
                                    else:
                                        _2942 = mem[(32 * arg2.length) + 320]
                                        if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not ext_call.success:
                                                    require idx < mem[96]
                                                    _3605 = mem[(32 * arg2.length) + 256]
                                                    _3606 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3605)
                                                    mem[mem[64] + 64] = address(_3606)
                                                    mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_3605), address(_3606), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _3841 = mem[(32 * arg2.length) + 256]
                                                    _3842 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_3841)
                                                    mem[mem[64] + 64] = address(_3842)
                                                    mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_3841), address(_3842), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                _3098 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                require ext_code.size(address(_3098))
                                                call address(_3098).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not ext_call.return_data[0]:
                                                    require idx < mem[96]
                                                    _4074 = mem[(32 * arg2.length) + 256]
                                                    _4075 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4074)
                                                    mem[mem[64] + 64] = address(_4075)
                                                    mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0x87ddc7a5: mem[mem[64]], address(_4074), address(_4075), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require idx < mem[96]
                                                    mem[0] = arg1
                                                    mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                    deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                    require idx < mem[96]
                                                    _4305 = mem[(32 * arg2.length) + 256]
                                                    _4306 = mem[_2843]
                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                    mem[mem[64] + 32] = address(_4305)
                                                    mem[mem[64] + 64] = address(_4306)
                                                    mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                    emit 0xd547b31c: mem[mem[64]], address(_4305), address(_4306), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                        else:
                                            _2968 = mem[(32 * arg2.length) + 320]
                                            if not mem[(32 * arg2.length) + 268 len 20]:
                                                call mem[_2843 + 12 len 20] with:
                                                   value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                     gas 2300 * is_zero(value) wei
                                                if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3826 = mem[(32 * arg2.length) + 256]
                                                        _3827 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3826)
                                                        mem[mem[64] + 64] = address(_3827)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3826), address(_3827), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4736 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4736)
                                                            mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4736), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4060 = mem[(32 * arg2.length) + 256]
                                                        _4061 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4060)
                                                        mem[mem[64] + 64] = address(_4061)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4060), address(_4061), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _4920 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4920)
                                                            mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_4920), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    call address(stor2.length) with:
                                                       value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _4065 = mem[(32 * arg2.length) + 256]
                                                        _4066 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4065)
                                                        mem[mem[64] + 64] = address(_4066)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4065), address(_4066), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _4924 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4924)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4924), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2968 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _4928 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4928)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_4928), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4300 = mem[(32 * arg2.length) + 256]
                                                        _4301 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4300)
                                                        mem[mem[64] + 64] = address(_4301)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4300), address(_4301), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.success:
                                                                require idx < mem[96]
                                                                _5084 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5084)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5084), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2968 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5088 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5088)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5088), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                            else:
                                                _3161 = mem[(32 * arg2.length) + 256]
                                                mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                mem[mem[64] + 36] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                require ext_code.size(address(_3161))
                                                call address(_3161).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4], 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if not (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4290 = mem[(32 * arg2.length) + 256]
                                                        _4291 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4290)
                                                        mem[mem[64] + 64] = address(_4291)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4290), address(_4291), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _5070 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5070)
                                                            mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5070), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4523 = mem[(32 * arg2.length) + 256]
                                                        _4524 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4523)
                                                        mem[mem[64] + 64] = address(_4524)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4523), address(_4524), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            require idx < mem[96]
                                                            _5217 = mem[(32 * arg2.length) + 256]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5217)
                                                            mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            emit 0x97d07c25: mem[mem[64]], address(_5217), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    _3822 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = address(stor2.length)
                                                    mem[mem[64] + 36] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    require ext_code.size(address(_3822))
                                                    call address(_3822).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args address(stor2.length), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _5075 = mem[(32 * arg2.length) + 256]
                                                        _5076 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5075)
                                                        mem[mem[64] + 64] = address(_5076)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_5075), address(_5076), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5505 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5505)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5505), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2968 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5509 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5509)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5509), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _5221 = mem[(32 * arg2.length) + 256]
                                                        _5222 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_5221)
                                                        mem[mem[64] + 64] = address(_5222)
                                                        mem[mem[64] + 96] = 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_5221), address(_5222), 366 * _2942 * uint256(stor1[_2842]) / 2981436285259668
                                                        if (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668):
                                                            if not ext_call.return_data[0]:
                                                                require idx < mem[96]
                                                                _5560 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5560)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5560), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                            else:
                                                                mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2968 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                require idx < mem[96]
                                                                _5564 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5564)
                                                                mem[mem[64] + 64] = (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0xa67812ee: mem[mem[64]], address(_5564), (_2968 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2942 * uint256(stor1[_2842]) / 2981436285259668)
                                else:
                                    if uint256(stor2[_2842]) >= 447072 * 24 * 3600:
                                        if 366 >= (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600) + 367:
                                            _2944 = mem[(32 * arg2.length) + 320]
                                            if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value (367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3618 = mem[(32 * arg2.length) + 256]
                                                        _3619 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3618)
                                                        mem[mem[64] + 64] = address(_3619)
                                                        mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3618), address(_3619), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _3864 = mem[(32 * arg2.length) + 256]
                                                        _3865 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3864)
                                                        mem[mem[64] + 64] = address(_3865)
                                                        mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_3864), address(_3865), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    _3105 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                    require ext_code.size(address(_3105))
                                                    call address(_3105).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4100 = mem[(32 * arg2.length) + 256]
                                                        _4101 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4100)
                                                        mem[mem[64] + 64] = address(_4101)
                                                        mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4100), address(_4101), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4325 = mem[(32 * arg2.length) + 256]
                                                        _4326 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4325)
                                                        mem[mem[64] + 64] = address(_4326)
                                                        mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4325), address(_4326), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                            else:
                                                _2970 = mem[(32 * arg2.length) + 320]
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value (367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _3849 = mem[(32 * arg2.length) + 256]
                                                            _3850 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_3849)
                                                            mem[mem[64] + 64] = address(_3850)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_3849), address(_3850), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4744 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4744)
                                                                mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4744), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4086 = mem[(32 * arg2.length) + 256]
                                                            _4087 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4086)
                                                            mem[mem[64] + 64] = address(_4087)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4086), address(_4087), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4939 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4939)
                                                                mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4939), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        call address(stor2.length) with:
                                                           value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4091 = mem[(32 * arg2.length) + 256]
                                                            _4092 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4091)
                                                            mem[mem[64] + 64] = address(_4092)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4091), address(_4092), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _4943 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_4943)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_4943), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2970 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _4947 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_4947)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_4947), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4320 = mem[(32 * arg2.length) + 256]
                                                            _4321 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4320)
                                                            mem[mem[64] + 64] = address(_4321)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4320), address(_4321), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5106 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5106)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5106), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2970 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5110 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5110)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5110), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    _3167 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                    require ext_code.size(address(_3167))
                                                    call address(_3167).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _4310 = mem[(32 * arg2.length) + 256]
                                                            _4311 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4310)
                                                            mem[mem[64] + 64] = address(_4311)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4310), address(_4311), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5092 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5092)
                                                                mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5092), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4530 = mem[(32 * arg2.length) + 256]
                                                            _4531 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4530)
                                                            mem[mem[64] + 64] = address(_4531)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4530), address(_4531), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5226 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5226)
                                                                mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5226), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        _3845 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64] + 4] = address(stor2.length)
                                                        mem[mem[64] + 36] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require ext_code.size(address(_3845))
                                                        call address(_3845).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor2.length), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5097 = mem[(32 * arg2.length) + 256]
                                                            _5098 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5097)
                                                            mem[mem[64] + 64] = address(_5098)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_5097), address(_5098), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5516 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5516)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5516), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2970 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5520 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5520)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5520), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _5230 = mem[(32 * arg2.length) + 256]
                                                            _5231 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5230)
                                                            mem[mem[64] + 64] = address(_5231)
                                                            mem[mem[64] + 96] = (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_5230), address(_5231), (367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5568 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5568)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5568), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2970 * uint256(stor1[_2842]) / 8146000779398) + ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5572 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5572)
                                                                    mem[mem[64] + 64] = (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5572), (_2970 * uint256(stor1[_2842]) / 8146000779398) - ((367 * _2944 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2944 * uint256(stor1[_2842])) / 2981436285259668)
                                        else:
                                            _2958 = mem[(32 * arg2.length) + 320]
                                            if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3873 = mem[(32 * arg2.length) + 256]
                                                        _3874 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3873)
                                                        mem[mem[64] + 64] = address(_3874)
                                                        mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3873), address(_3874), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4127 = mem[(32 * arg2.length) + 256]
                                                        _4128 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4127)
                                                        mem[mem[64] + 64] = address(_4128)
                                                        mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4127), address(_4128), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    _3174 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                    require ext_code.size(address(_3174))
                                                    call address(_3174).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4347 = mem[(32 * arg2.length) + 256]
                                                        _4348 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4347)
                                                        mem[mem[64] + 64] = address(_4348)
                                                        mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4347), address(_4348), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4552 = mem[(32 * arg2.length) + 256]
                                                        _4553 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4552)
                                                        mem[mem[64] + 64] = address(_4553)
                                                        mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4552), address(_4553), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                _2987 = mem[(32 * arg2.length) + 320]
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4112 = mem[(32 * arg2.length) + 256]
                                                            _4113 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4112)
                                                            mem[mem[64] + 64] = address(_4113)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4112), address(_4113), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4954 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4954)
                                                                mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4954), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4333 = mem[(32 * arg2.length) + 256]
                                                            _4334 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4333)
                                                            mem[mem[64] + 64] = address(_4334)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4333), address(_4334), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5118 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5118)
                                                                mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5118), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        call address(stor2.length) with:
                                                           value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4338 = mem[(32 * arg2.length) + 256]
                                                            _4339 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4338)
                                                            mem[mem[64] + 64] = address(_4339)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4338), address(_4339), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5122 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5122)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5122), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2987 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5126 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5126)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5126), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4547 = mem[(32 * arg2.length) + 256]
                                                            _4548 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4547)
                                                            mem[mem[64] + 64] = address(_4548)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4547), address(_4548), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5249 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5249)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5249), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2987 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5253 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5253)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5253), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    _3266 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                    require ext_code.size(address(_3266))
                                                    call address(_3266).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _4537 = mem[(32 * arg2.length) + 256]
                                                            _4538 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4537)
                                                            mem[mem[64] + 64] = address(_4538)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4537), address(_4538), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5235 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5235)
                                                                mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5235), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4752 = mem[(32 * arg2.length) + 256]
                                                            _4753 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4752)
                                                            mem[mem[64] + 64] = address(_4753)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4752), address(_4753), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5346 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5346)
                                                                mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5346), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        _4108 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64] + 4] = address(stor2.length)
                                                        mem[mem[64] + 36] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require ext_code.size(address(_4108))
                                                        call address(_4108).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor2.length), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5240 = mem[(32 * arg2.length) + 256]
                                                            _5241 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5240)
                                                            mem[mem[64] + 64] = address(_5241)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_5240), address(_5241), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5576 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5576)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5576), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2987 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5580 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5580)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5580), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _5350 = mem[(32 * arg2.length) + 256]
                                                            _5351 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5350)
                                                            mem[mem[64] + 64] = address(_5351)
                                                            mem[mem[64] + 96] = 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_5350), address(_5351), 366 * _2958 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5609 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5609)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5609), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2987 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5613 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5613)
                                                                    mem[mem[64] + 64] = (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5613), (_2987 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2958 * uint256(stor1[_2842]) / 2981436285259668)
                                    else:
                                        if 366 >= (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600) + -(uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600) + 366:
                                            _2960 = mem[(32 * arg2.length) + 320]
                                            if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _3886 = mem[(32 * arg2.length) + 256]
                                                        _3887 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_3886)
                                                        mem[mem[64] + 64] = address(_3887)
                                                        mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_3886), address(_3887), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4150 = mem[(32 * arg2.length) + 256]
                                                        _4151 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4150)
                                                        mem[mem[64] + 64] = address(_4151)
                                                        mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4150), address(_4151), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                else:
                                                    _3181 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                    require ext_code.size(address(_3181))
                                                    call address(_3181).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4373 = mem[(32 * arg2.length) + 256]
                                                        _4374 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4373)
                                                        mem[mem[64] + 64] = address(_4374)
                                                        mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4373), address(_4374), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4572 = mem[(32 * arg2.length) + 256]
                                                        _4573 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4572)
                                                        mem[mem[64] + 64] = address(_4573)
                                                        mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4572), address(_4573), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                            else:
                                                _2989 = mem[(32 * arg2.length) + 320]
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4135 = mem[(32 * arg2.length) + 256]
                                                            _4136 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4135)
                                                            mem[mem[64] + 64] = address(_4136)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4135), address(_4136), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _4962 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_4962)
                                                                mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_4962), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4359 = mem[(32 * arg2.length) + 256]
                                                            _4360 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4359)
                                                            mem[mem[64] + 64] = address(_4360)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4359), address(_4360), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5137 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5137)
                                                                mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5137), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        call address(stor2.length) with:
                                                           value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - ((366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4364 = mem[(32 * arg2.length) + 256]
                                                            _4365 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4364)
                                                            mem[mem[64] + 64] = address(_4365)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4364), address(_4365), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5141 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5141)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5141), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2989 * uint256(stor1[_2842]) / 8146000779398) + ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5145 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5145)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5145), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) + (mem[(32 * arg2.length) + 288] - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4567 = mem[(32 * arg2.length) + 256]
                                                            _4568 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4567)
                                                            mem[mem[64] + 64] = address(_4568)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4567), address(_4568), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5271 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5271)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5271), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2989 * uint256(stor1[_2842]) / 8146000779398) + ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5275 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5275)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5275), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                else:
                                                    _3272 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                    require ext_code.size(address(_3272))
                                                    call address(_3272).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _4557 = mem[(32 * arg2.length) + 256]
                                                            _4558 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4557)
                                                            mem[mem[64] + 64] = address(_4558)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4557), address(_4558), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5257 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5257)
                                                                mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5257), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4759 = mem[(32 * arg2.length) + 256]
                                                            _4760 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4759)
                                                            mem[mem[64] + 64] = address(_4760)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4759), address(_4760), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5355 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5355)
                                                                mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5355), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                    else:
                                                        _4131 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64] + 4] = address(stor2.length)
                                                        mem[mem[64] + 36] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        require ext_code.size(address(_4131))
                                                        call address(_4131).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor2.length), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5262 = mem[(32 * arg2.length) + 256]
                                                            _5263 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5262)
                                                            mem[mem[64] + 64] = address(_5263)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_5262), address(_5263), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5587 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5587)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5587), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2989 * uint256(stor1[_2842]) / 8146000779398) + ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5591 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5591)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5591), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _5359 = mem[(32 * arg2.length) + 256]
                                                            _5360 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5359)
                                                            mem[mem[64] + 64] = address(_5360)
                                                            mem[mem[64] + 96] = (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_5359), address(_5360), (366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668
                                                            if (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5617 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5617)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5617), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_2989 * uint256(stor1[_2842]) / 8146000779398) + ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5621 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5621)
                                                                    mem[mem[64] + 64] = (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5621), (_2989 * uint256(stor1[_2842]) / 8146000779398) - ((366 * _2960 * uint256(stor1[_2842])) + (_2866 - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) - (uint256(stor2[_2842]) - (438288 * 24 * 3600) / 24 * 3600 * _2960 * uint256(stor1[_2842])) / 2981436285259668)
                                        else:
                                            _2974 = mem[(32 * arg2.length) + 320]
                                            if mem[(32 * arg2.length) + 288] >= 438288 * 24 * 3600:
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not ext_call.success:
                                                        require idx < mem[96]
                                                        _4159 = mem[(32 * arg2.length) + 256]
                                                        _4160 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4159)
                                                        mem[mem[64] + 64] = address(_4160)
                                                        mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4159), address(_4160), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4400 = mem[(32 * arg2.length) + 256]
                                                        _4401 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4400)
                                                        mem[mem[64] + 64] = address(_4401)
                                                        mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4400), address(_4401), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                else:
                                                    _3279 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                    require ext_code.size(address(_3279))
                                                    call address(_3279).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not ext_call.return_data[0]:
                                                        require idx < mem[96]
                                                        _4594 = mem[(32 * arg2.length) + 256]
                                                        _4595 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4594)
                                                        mem[mem[64] + 64] = address(_4595)
                                                        mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0x87ddc7a5: mem[mem[64]], address(_4594), address(_4595), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                    else:
                                                        mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require idx < mem[96]
                                                        mem[0] = arg1
                                                        mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                        deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                        require idx < mem[96]
                                                        _4781 = mem[(32 * arg2.length) + 256]
                                                        _4782 = mem[_2843]
                                                        mem[mem[64]] = mem[(32 * idx) + 128]
                                                        mem[mem[64] + 32] = address(_4781)
                                                        mem[mem[64] + 64] = address(_4782)
                                                        mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                        emit 0xd547b31c: mem[mem[64]], address(_4781), address(_4782), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                            else:
                                                _3015 = mem[(32 * arg2.length) + 320]
                                                if not mem[(32 * arg2.length) + 268 len 20]:
                                                    call mem[_2843 + 12 len 20] with:
                                                       value 366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668 wei
                                                         gas 2300 * is_zero(value) wei
                                                    if not (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4385 = mem[(32 * arg2.length) + 256]
                                                            _4386 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4385)
                                                            mem[mem[64] + 64] = address(_4386)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4385), address(_4386), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5152 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5152)
                                                                mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5152), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4580 = mem[(32 * arg2.length) + 256]
                                                            _4581 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4580)
                                                            mem[mem[64] + 64] = address(_4581)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4580), address(_4581), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5283 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5283)
                                                                mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5283), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        call address(stor2.length) with:
                                                           value (mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 8146000779398) - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668) wei
                                                             gas 2300 * is_zero(value) wei
                                                        if not ext_call.success:
                                                            require idx < mem[96]
                                                            _4585 = mem[(32 * arg2.length) + 256]
                                                            _4586 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4585)
                                                            mem[mem[64] + 64] = address(_4586)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4585), address(_4586), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5287 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5287)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5287), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_3015 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5291 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5291)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5291), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * mem[(32 * arg2.length) + 320] * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4776 = mem[(32 * arg2.length) + 256]
                                                            _4777 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4776)
                                                            mem[mem[64] + 64] = address(_4777)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4776), address(_4777), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.success:
                                                                    require idx < mem[96]
                                                                    _5378 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5378)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5378), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_3015 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5382 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5382)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5382), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                else:
                                                    _3422 = mem[(32 * arg2.length) + 256]
                                                    mem[mem[64] + 4] = mem[_2843 + 12 len 20]
                                                    mem[mem[64] + 36] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                    require ext_code.size(address(_3422))
                                                    call address(_3422).0xa9059cbb with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4], 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                    mem[mem[64]] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if not (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _4766 = mem[(32 * arg2.length) + 256]
                                                            _4767 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4766)
                                                            mem[mem[64] + 64] = address(_4767)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_4766), address(_4767), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5364 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5364)
                                                                mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5364), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _4970 = mem[(32 * arg2.length) + 256]
                                                            _4971 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_4970)
                                                            mem[mem[64] + 64] = address(_4971)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_4970), address(_4971), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                require idx < mem[96]
                                                                _5447 = mem[(32 * arg2.length) + 256]
                                                                mem[mem[64]] = mem[(32 * idx) + 128]
                                                                mem[mem[64] + 32] = address(_5447)
                                                                mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                emit 0x97d07c25: mem[mem[64]], address(_5447), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                    else:
                                                        _4381 = mem[(32 * arg2.length) + 256]
                                                        mem[mem[64] + 4] = address(stor2.length)
                                                        mem[mem[64] + 36] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        require ext_code.size(address(_4381))
                                                        call address(_4381).0xa9059cbb with:
                                                             gas gas_remaining wei
                                                            args address(stor2.length), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        mem[mem[64]] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if not ext_call.return_data[0]:
                                                            require idx < mem[96]
                                                            _5369 = mem[(32 * arg2.length) + 256]
                                                            _5370 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5369)
                                                            mem[mem[64] + 64] = address(_5370)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0x87ddc7a5: mem[mem[64]], address(_5369), address(_5370), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5625 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5625)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5625), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_3015 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5629 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5629)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5629), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                        else:
                                                            mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                            require idx < mem[96]
                                                            mem[0] = arg1
                                                            mem[32] = sha3(mem[(32 * idx) + 128], 4) + 3
                                                            deposits[mem[(32 * idx) + 128]][3][arg1].field_0 = 1
                                                            require idx < mem[96]
                                                            _5451 = mem[(32 * arg2.length) + 256]
                                                            _5452 = mem[_2843]
                                                            mem[mem[64]] = mem[(32 * idx) + 128]
                                                            mem[mem[64] + 32] = address(_5451)
                                                            mem[mem[64] + 64] = address(_5452)
                                                            mem[mem[64] + 96] = 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            emit 0xd547b31c: mem[mem[64]], address(_5451), address(_5452), 366 * _2974 * uint256(stor1[_2842]) / 2981436285259668
                                                            if (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668):
                                                                if not ext_call.return_data[0]:
                                                                    require idx < mem[96]
                                                                    _5636 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5636)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0x97d07c25: mem[mem[64]], address(_5636), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                else:
                                                                    mem[(32 * arg2.length) + 352] = mem[(32 * arg2.length) + 352] - (_3015 * uint256(stor1[_2842]) / 8146000779398) + (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    require idx < mem[96]
                                                                    _5640 = mem[(32 * arg2.length) + 256]
                                                                    mem[mem[64]] = mem[(32 * idx) + 128]
                                                                    mem[mem[64] + 32] = address(_5640)
                                                                    mem[mem[64] + 64] = (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
                                                                    emit 0xa67812ee: mem[mem[64]], address(_5640), (_3015 * uint256(stor1[_2842]) / 8146000779398) - (366 * _2974 * uint256(stor1[_2842]) / 2981436285259668)
        idx = idx + 1
        continue 
    sub_9a0718de[arg1].field_0 = mem[(32 * arg2.length) + 268 len 20]
    sub_9a0718de[arg1].field_256 = mem[(32 * arg2.length) + 288]
    sub_9a0718de[arg1].field_512 = mem[(32 * arg2.length) + 320]
    sub_9a0718de[arg1].field_768 = mem[(32 * arg2.length) + 352]
    return 1
}



}
