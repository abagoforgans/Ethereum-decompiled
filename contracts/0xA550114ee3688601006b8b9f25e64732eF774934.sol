contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
address newAddress;
uint256 minimumFee;
mapping of uint8 stor4;
array of address children;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function minimumFee() {
    return minimumFee
}

function numberOfChildren() {
    return children.length
}

function children(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < children.length
    return children[arg1]
}

function owner() {
    return owner
}

function newAddress() {
    return newAddress
}

function newOwner() {
    return newOwner
}

function isChild(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function _fallback() payable {
    revert
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    require not owner
    owner = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function setMinimumFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    emit MinimumFeeUpdated(minimumFee, arg1);
    minimumFee = arg1
}

function deprecateFactory(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not newAddress
    emit FactoryDeprecated(arg1);
    newAddress = arg1
}

function recoverTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not arg1:
        if not arg2:
            call owner with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call owner with:
               value arg2 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        if arg2:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, arg2
        else:
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_cdaca7d5(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require msg.value >= minimumFee
    require arg3 <= 27
    require arg4 > 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 4091] = code.data[3119 len 4091]
    create contract with 0 wei
                    code: Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), code.data[arg2.length + -ceil32(arg2.length) + 3151 len -arg2.length + ceil32(arg2.length) + 4059]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0x9cc850e800000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg1.length + 192
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 224]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 420 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 256]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 388 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = floor32(arg1.length) + 224
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 388] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 420 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 256]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 420] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 452 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
                 gas gas_remaining wei
                args mem[ceil32(arg1.length) + ceil32(arg2.length) + 164 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 288]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[32] = 4
    stor4[address(create.new_address)] = 1
    children.length++
    mem[0] = 5
    stor36B6[stor5.length] = address(create.new_address)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = arg1.length + 160
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 320] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit TokenDeployed(address arg1, address arg2, string arg3, string arg4, uint8 arg5, uint256 arg6):
                               mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 192],
                               owner,
                               address(create.new_address),
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 352] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 384 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit TokenDeployed(address arg1, address arg2, string arg3, string arg4, uint8 arg5, uint256 arg6):
                               mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 224],
                               owner,
                               address(create.new_address),
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 320] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 352 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = floor32(arg1.length) + 192
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 352] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            emit TokenDeployed(address arg1, address arg2, string arg3, string arg4, uint8 arg5, uint256 arg6):
                               mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 224],
                               owner,
                               address(create.new_address),
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 384] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 416 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            emit TokenDeployed(address arg1, address arg2, string arg3, string arg4, uint8 arg5, uint256 arg6):
                               mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 256],
                               owner,
                               address(create.new_address),
    if msg.value > 0:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(create.new_address) << 96
}



}
