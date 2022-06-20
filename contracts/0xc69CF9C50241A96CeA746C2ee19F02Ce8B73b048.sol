contract main {




// =====================  Runtime code  =====================


const sub_6594eac3(?) = 'CnusPoolForStaking'

const sub_6ebd4940(?) = 'CnusToken'

const sub_b25ba451(?) = 'TokenPool'

const sub_ba33cde5(?) = 'BnusToken'


address owner;
address newOwner;
address stor2;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function setRegistry(address arg1) {
    require msg.sender == owner
    stor2 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_3abdcf9b(?) {
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'BnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ad1ca001(?) {
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'CnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7c5b85a2(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'CnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require ext_call.return_data[12 len 20]
    require arg1
    require arg1 != this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x8986d2aa: arg2, address(ext_call.return_data[0]), arg1
}

function sub_8dba6729(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'BnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == owner
    require ext_call.return_data[12 len 20]
    require arg1
    require arg1 != this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x8986d2aa: arg2, address(ext_call.return_data[0]), arg1
}

function sub_c498527d(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'BnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa137f05f with:
         gas gas_remaining wei
        args 0, arg1, arg2, 0, 128, 2, '0x'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_17df88f3(?) {
    require msg.sender == owner
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'CnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'BnusToken'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8bf676b5 with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, 0, 128, 2, '0x'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7aeadf57(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = 'CnusToken'
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'CnusToken'
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        require address(ext_call.return_data[0])
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + 140 len 20] != this.address
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _30
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _30
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < arg1.length
        _36 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit 0x8986d2aa: mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(ext_call.return_data[0]), address(_36)
        idx = idx + 1
        continue 
}

function sub_b5ca8f4b(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    mem[(32 * arg2.length) + (32 * arg1.length) + 164] = 'BnusToken'
    require ext_code.size(stor2)
    call stor2.0xbb3453 with:
         gas gas_remaining wei
        args 'BnusToken'
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2.length == arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        require address(ext_call.return_data[0])
        require mem[(32 * idx) + 140 len 20]
        require mem[(32 * idx) + 140 len 20] != this.address
        mem[(32 * arg2.length) + (32 * arg1.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg2.length) + (32 * arg1.length) + 196] = _30
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg2.length) + (32 * arg1.length) + 164], _30
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < arg1.length
        _36 = mem[(32 * idx) + 128]
        require idx < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * idx) + (32 * arg1.length) + 160]
        emit 0x8986d2aa: mem[(32 * arg2.length) + (32 * arg1.length) + 160], address(ext_call.return_data[0]), address(_36)
        idx = idx + 1
        continue 
}



}
