contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
uint8 stor2;
address sub_32a7f760Address; offset 8
address exchangeAddress;

function sub_32a7f760(?) {
    return sub_32a7f760Address
}

function paused() {
    return bool(stor2)
}

function owner() {
    return owner
}

function authorizedPrimaries(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function exchange() {
    return exchangeAddress
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_836e6965(?) {
    require calldata.size - 4 >= 352
    require stor1[msg.sender]
    return block.number <= arg1
}

function addTotle(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeTotle(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function pause() {
    require msg.sender == owner
    if stor2:
        revert with 0, 'Contract is paused.'
    stor2 = 1
    emit Paused()
}

function unpause() {
    require msg.sender == owner
    if not stor2:
        revert with 0, 'Contract not paused.'
    stor2 = 0
    emit Unpaused()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawETH(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if exchangeAddress != msg.sender:
        require ext_code.size(sub_32a7f760Address)
        call sub_32a7f760Address.0x37072fe with:
             gas gas_remaining wei
            args 0, 'An address other than the exchange cannot send ether to EDHandler fallback'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args owner, arg2
    require ext_call.success
    if not return_data.size:
        return 1
    require return_data.size == 32
    return bool(ext_call.return_data[0])
}

function substractFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 + 10^18 >= arg1
    if not arg2:
        require arg1 + 10^18 > 0
        require arg1 + 10^18
        require 0 / arg1 + 10^18 <= arg2
        require arg2 - (0 / arg1 + 10^18) <= arg2
        return 0 / arg1 + 10^18, arg2 - (0 / arg1 + 10^18)
    require 10^18 * arg2 / arg2 == 10^18
    require arg1 + 10^18 > 0
    require arg1 + 10^18
    require 10^18 * arg2 / arg1 + 10^18 <= arg2
    require arg2 - (10^18 * arg2 / arg1 + 10^18) <= arg2
    return 10^18 * arg2 / arg1 + 10^18, arg2 - (10^18 * arg2 / arg1 + 10^18)
}

function sub_4e8c3a26(?) {
    require calldata.size - 4 >= 352
    require stor1[msg.sender]
    require ext_code.size(exchangeAddress)
    call exchangeAddress.availableVolume(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10) with:
         gas gas_remaining wei
        args address(arg3), arg5, address(arg2), arg4, arg6, arg7, address(arg1), arg8 << 248, arg9, arg10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_call.return_data[0] >= 0
        return ext_call.return_data[0]
    require arg11 * ext_call.return_data[0] / ext_call.return_data[0] == arg11
    require ext_call.return_data[0] + (arg11 * ext_call.return_data[0] / 10^18) >= arg11 * ext_call.return_data[0] / 10^18
    return (ext_call.return_data[0] + (arg11 * ext_call.return_data[0] / 10^18))
}

function sub_ddd644cd(?) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, sha3('getAmountToGive(bytes)')) == Mask(32, 224, arg1):
        return Mask(32, 224, sha3('getAmountToGive((address,address', ',address,uint256,uint256,uint256', ',uint256,uint8,bytes32,bytes32,u', 'int256))'))
    if Mask(32, 224, sha3('staticExchangeChecks(bytes)')) == Mask(32, 224, arg1):
        return Mask(32, 224, sha3('staticExchangeChecks((address,ad', 'dress,address,uint256,uint256,ui', 'nt256,uint256,uint8,bytes32,byte', 's32,uint256))'))
    if Mask(32, 224, sha3('performBuyOrder(bytes,uint256)')) == Mask(32, 224, arg1):
        return Mask(32, 224, sha3('performBuyOrder((address,address', ',address,uint256,uint256,uint256', ',uint256,uint8,bytes32,bytes32,u', 'int256),uint256)'))
    if Mask(32, 224, sha3('performSellOrder(bytes,uint256)')) != Mask(32, 224, arg1):
        return 0
    return Mask(32, 224, sha3('performSellOrder((address,addres', 's,address,uint256,uint256,uint25', '6,uint256,uint8,bytes32,bytes32,', 'uint256),uint256)'))
}

function sub_bd4191da(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if Mask(32, 224, sha3(Mask(176, -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256)) == 0xbd4191da00000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg1.length) + 128] = 'getAmountToGive((address,address'
        mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
        delegate this.address with:
           funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256))')) >> 224)
             gas gas_remaining wei
            args arg1[all]
    else:
        if Mask(32, 224, sha3(Mask(216, -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256)) == 0xbd4191da00000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + 128] = 'staticExchangeChecks((address,ad'
            mem[ceil32(arg1.length) + 160] = 'dress,address,uint256,uint256,ui'
            delegate this.address with:
               funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], 'nt256,uint256,uint8,bytes32,byte', 's32,uint256))')) >> 224)
                 gas gas_remaining wei
                args arg1[all]
        else:
            if Mask(32, 224, sha3(Mask(240, -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256)) == 0xbd4191da00000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg1.length) + 128] = 'performBuyOrder((address,address'
                mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
                delegate this.address with:
                   funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256),uint256)')) >> 224)
                     gas gas_remaining wei
                    args arg1[all]
            else:
                if Mask(32, 224, sha3(Mask(248, -(8 * ceil32(arg1.length) + -arg1.length + 31) + 256, 0) << (8 * ceil32(arg1.length) + -arg1.length + 31) - 256)) != 0xbd4191da00000000000000000000000000000000000000000000000000000000:
                    delegate this.address with:
                       funct uint32(mem[0 len 28], 0)
                         gas gas_remaining wei
                        args arg1[all]
                else:
                    mem[ceil32(arg1.length) + 128] = 'performSellOrder((address,addres'
                    mem[ceil32(arg1.length) + 160] = 's,address,uint256,uint256,uint25'
                    delegate this.address with:
                       funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], '6,uint256,uint8,bytes32,bytes32,', 'uint256),uint256)')) >> 224)
                         gas gas_remaining wei
                        args arg1[all]
    require delegate.return_code
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_beb2c9b0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if Mask(32, 224, sha3(Mask(176, -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256)) == 0xbeb2c9b000000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg1.length) + 128] = 'getAmountToGive((address,address'
        mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
        delegate this.address with:
           funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256))')) >> 224)
             gas gas_remaining wei
            args arg1[all]
    else:
        if Mask(32, 224, sha3(Mask(216, -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256)) == 0xbeb2c9b000000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + 128] = 'staticExchangeChecks((address,ad'
            mem[ceil32(arg1.length) + 160] = 'dress,address,uint256,uint256,ui'
            delegate this.address with:
               funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], 'nt256,uint256,uint8,bytes32,byte', 's32,uint256))')) >> 224)
                 gas gas_remaining wei
                args arg1[all]
        else:
            if Mask(32, 224, sha3(Mask(240, -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256)) == 0xbeb2c9b000000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg1.length) + 128] = 'performBuyOrder((address,address'
                mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
                delegate this.address with:
                   funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256),uint256)')) >> 224)
                     gas gas_remaining wei
                    args arg1[all]
            else:
                if Mask(32, 224, sha3(Mask(248, -(8 * ceil32(arg1.length) + -arg1.length + 31) + 256, 0) << (8 * ceil32(arg1.length) + -arg1.length + 31) - 256)) != 0xbeb2c9b000000000000000000000000000000000000000000000000000000000:
                    delegate this.address with:
                       funct uint32(mem[0 len 28], 0)
                         gas gas_remaining wei
                        args arg1[all]
                else:
                    mem[ceil32(arg1.length) + 128] = 'performSellOrder((address,addres'
                    mem[ceil32(arg1.length) + 160] = 's,address,uint256,uint256,uint25'
                    delegate this.address with:
                       funct (Mask(32, 224, sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], '6,uint256,uint8,bytes32,bytes32,', 'uint256),uint256)')) >> 224)
                         gas gas_remaining wei
                        args arg1[all]
    require delegate.return_code
    mem[ceil32(arg1.length) + 128] = bool(delegate.return_data[0])
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
}

function sub_0d504565(?) {
    require calldata.size - 4 >= 384
    require calldata.size - 4 >= 352
    require stor1[msg.sender]
    require ext_code.size(arg3)
    call arg3.0xdd62ed3e with:
         gas gas_remaining wei
        args address(this.address), exchangeAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        call arg3 with:
           funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
             gas gas_remaining wei
            args exchangeAddress, -1
        require ext_call.success
        if return_data.size:
            require return_data.size == 32
            require ext_call.return_data[0]
    require ext_code.size(exchangeAddress)
    call exchangeAddress.depositToken(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg3), arg12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg11 + 10^18 >= arg11
    if not arg12:
        require arg11 + 10^18 > 0
        require arg11 + 10^18
        require 0 / arg11 + 10^18 <= arg12
        require arg12 - (0 / arg11 + 10^18) <= arg12
        require ext_code.size(exchangeAddress)
        call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args address(arg3), arg5, address(arg2), arg4, arg6, arg7, address(arg1), arg8 << 248, arg9, arg10, 0 / arg11 + 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg4:
            require arg5 > 0
            require arg5
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x2e1a7d4d with:
                 gas gas_remaining wei
                args (0 / arg5)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call msg.sender with:
               value 0 / arg5 wei
                 gas 2300 * is_zero(value) wei
            return arg12, 0 / arg5
        require 0 / arg11 + 10^18 * arg4 / arg4 == 0 / arg11 + 10^18
        require arg5 > 0
        require arg5
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (0 / arg11 + 10^18 * arg4 / arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value 0 / arg11 + 10^18 * arg4 / arg5 wei
             gas 2300 * is_zero(value) wei
        return arg12, 0 / arg11 + 10^18 * arg4 / arg5
    require 10^18 * arg12 / arg12 == 10^18
    require arg11 + 10^18 > 0
    require arg11 + 10^18
    require 10^18 * arg12 / arg11 + 10^18 <= arg12
    require arg12 - (10^18 * arg12 / arg11 + 10^18) <= arg12
    require ext_code.size(exchangeAddress)
    call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args address(arg3), arg5, address(arg2), arg4, arg6, arg7, address(arg1), arg8 << 248, arg9, arg10, 10^18 * arg12 / arg11 + 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg4:
        require arg5 > 0
        require arg5
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x2e1a7d4d with:
             gas gas_remaining wei
            args (0 / arg5)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value 0 / arg5 wei
             gas 2300 * is_zero(value) wei
        return arg12, 0 / arg5
    require 10^18 * arg12 / arg11 + 10^18 * arg4 / arg4 == 10^18 * arg12 / arg11 + 10^18
    require arg5 > 0
    require arg5
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x2e1a7d4d with:
         gas gas_remaining wei
        args (10^18 * arg12 / arg11 + 10^18 * arg4 / arg5)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call msg.sender with:
       value 10^18 * arg12 / arg11 + 10^18 * arg4 / arg5 wei
         gas 2300 * is_zero(value) wei
    return arg12, 10^18 * arg12 / arg11 + 10^18 * arg4 / arg5
}

function sub_0d0a3bb7(?) payable {
    require calldata.size - 4 >= 384
    require calldata.size - 4 >= 352
    require stor1[msg.sender]
    if arg12 != msg.value:
        require ext_code.size(sub_32a7f760Address)
        call sub_32a7f760Address.0x37072fe with:
             gas gas_remaining wei
            args Array(len=33, data='msg.value != amountToGiveForOrde', 'r')
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(exchangeAddress)
    call exchangeAddress.deposit() with:
       value arg12 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg11 + 10^18 >= arg11
    if not arg12:
        require arg11 + 10^18 > 0
        require arg11 + 10^18
        require 0 / arg11 + 10^18 <= arg12
        require arg12 - (0 / arg11 + 10^18) <= arg12
        require ext_code.size(exchangeAddress)
        call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
             gas gas_remaining wei
            args address(arg3), arg5, address(arg2), arg4, arg6, arg7, address(arg1), arg8 << 248, arg9, arg10, 0 / arg11 + 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg4:
            require arg5 > 0
            require arg5
            require ext_code.size(exchangeAddress)
            call exchangeAddress.0x9e281a98 with:
                 gas gas_remaining wei
                args address(arg2), 0 / arg5
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call arg2 with:
               funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
                 gas gas_remaining wei
                args msg.sender, 0 / arg5
            if return_data.size:
                require return_data.size == 32
                if not ext_call.return_data[0]:
                    require ext_code.size(sub_32a7f760Address)
                    call sub_32a7f760Address.0x37072fe with:
                         gas gas_remaining wei
                        args Array(len=43, data='Unable to transfer bought tokens', ' to primary')
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            return arg12, 0 / arg5
        require 0 / arg11 + 10^18 * arg4 / arg4 == 0 / arg11 + 10^18
        require arg5 > 0
        require arg5
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(arg2), 0 / arg11 + 10^18 * arg4 / arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg2 with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, 0 / arg11 + 10^18 * arg4 / arg5
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_32a7f760Address)
                call sub_32a7f760Address.0x37072fe with:
                     gas gas_remaining wei
                    args Array(len=43, data='Unable to transfer bought tokens', ' to primary')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return arg12, 0 / arg11 + 10^18 * arg4 / arg5
    require 10^18 * arg12 / arg12 == 10^18
    require arg11 + 10^18 > 0
    require arg11 + 10^18
    require 10^18 * arg12 / arg11 + 10^18 <= arg12
    require arg12 - (10^18 * arg12 / arg11 + 10^18) <= arg12
    require ext_code.size(exchangeAddress)
    call exchangeAddress.trade(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, uint8 arg8, bytes32 arg9, bytes32 arg10, uint256 arg11) with:
         gas gas_remaining wei
        args address(arg3), arg5, address(arg2), arg4, arg6, arg7, address(arg1), arg8 << 248, arg9, arg10, 10^18 * arg12 / arg11 + 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg4:
        require arg5 > 0
        require arg5
        require ext_code.size(exchangeAddress)
        call exchangeAddress.0x9e281a98 with:
             gas gas_remaining wei
            args address(arg2), 0 / arg5
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call arg2 with:
           funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
             gas gas_remaining wei
            args msg.sender, 0 / arg5
        if return_data.size:
            require return_data.size == 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_32a7f760Address)
                call sub_32a7f760Address.0x37072fe with:
                     gas gas_remaining wei
                    args Array(len=43, data='Unable to transfer bought tokens', ' to primary')
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        return arg12, 0 / arg5
    require 10^18 * arg12 / arg11 + 10^18 * arg4 / arg4 == 10^18 * arg12 / arg11 + 10^18
    require arg5 > 0
    require arg5
    require ext_code.size(exchangeAddress)
    call exchangeAddress.0x9e281a98 with:
         gas gas_remaining wei
        args address(arg2), 10^18 * arg12 / arg11 + 10^18 * arg4 / arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining wei
        args msg.sender, 10^18 * arg12 / arg11 + 10^18 * arg4 / arg5
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_32a7f760Address)
            call sub_32a7f760Address.0x37072fe with:
                 gas gas_remaining wei
                args Array(len=43, data='Unable to transfer bought tokens', ' to primary')
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    return arg12, 10^18 * arg12 / arg11 + 10^18 * arg4 / arg5
}

function sub_7cdcffbb(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if Mask(32, 224, sha3(Mask(176, -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256)) == 0x7cdcffbb00000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg1.length) + 128] = 'getAmountToGive((address,address'
        mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
        mem[ceil32(arg1.length) + 192] = ',uint256,uint8,bytes32,bytes32,u'
        mem[ceil32(arg1.length) + 224] = 'int256))'
        _10 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256))')
        mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
        _24 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _10) >> 224
        mem[ceil32(arg1.length) + _24 + 160] = arg2
        delegate this.address with:
           funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
             gas gas_remaining wei
            args ',address,uint256,uint256,uint256', mem[ceil32(arg1.length) + 192 len _24]
    else:
        if Mask(32, 224, sha3(Mask(216, -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256)) == 0x7cdcffbb00000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + 128] = 'staticExchangeChecks((address,ad'
            mem[ceil32(arg1.length) + 160] = 'dress,address,uint256,uint256,ui'
            mem[ceil32(arg1.length) + 192] = 'nt256,uint256,uint8,bytes32,byte'
            mem[ceil32(arg1.length) + 224] = 's32,uint256))'
            _16 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], 'nt256,uint256,uint8,bytes32,byte', 's32,uint256))')
            mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
            _32 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _16) >> 224
            mem[ceil32(arg1.length) + _32 + 160] = arg2
            delegate this.address with:
               funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                 gas gas_remaining wei
                args 'dress,address,uint256,uint256,ui', mem[ceil32(arg1.length) + 192 len _32]
        else:
            if Mask(32, 224, sha3(Mask(240, -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256)) == 0x7cdcffbb00000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg1.length) + 128] = 'performBuyOrder((address,address'
                mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
                mem[ceil32(arg1.length) + 192] = ',uint256,uint8,bytes32,bytes32,u'
                mem[ceil32(arg1.length) + 224] = 'int256),uint256)'
                _22 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256),uint256)')
                mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
                _37 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _22) >> 224
                mem[ceil32(arg1.length) + _37 + 160] = arg2
                delegate this.address with:
                   funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                     gas gas_remaining wei
                    args ',address,uint256,uint256,uint256', mem[ceil32(arg1.length) + 192 len _37]
            else:
                mem[ceil32(arg1.length) + 128] = 'performSellOrder(bytes,uint256)'
                if Mask(32, 224, sha3(Mask(248, -(8 * ceil32(arg1.length) + -arg1.length + 31) + 256, 0) << (8 * ceil32(arg1.length) + -arg1.length + 31) - 256)) != 0x7cdcffbb00000000000000000000000000000000000000000000000000000000:
                    mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
                    _43 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[ceil32(arg1.length) + 128] = mem[0 len 28], 0
                    mem[ceil32(arg1.length) + _43 + 160] = arg2
                    delegate this.address with:
                       funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                         gas gas_remaining wei
                        args mem[ceil32(arg1.length) + 160 len _43 + 32]
                else:
                    mem[ceil32(arg1.length) + 128] = 'performSellOrder((address,addres'
                    mem[ceil32(arg1.length) + 160] = 's,address,uint256,uint256,uint25'
                    mem[ceil32(arg1.length) + 192] = '6,uint256,uint8,bytes32,bytes32,'
                    mem[ceil32(arg1.length) + 224] = 'uint256),uint256)'
                    _30 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], '6,uint256,uint8,bytes32,bytes32,', 'uint256),uint256)')
                    mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
                    _48 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _30) >> 224
                    mem[ceil32(arg1.length) + _48 + 160] = arg2
                    delegate this.address with:
                       funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                         gas gas_remaining wei
                        args 's,address,uint256,uint256,uint25', mem[ceil32(arg1.length) + 192 len _48]
    require delegate.return_code
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    mem[ceil32(arg1.length) + 160] = delegate.return_data[32]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]
}

function sub_d592a1ea(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    if Mask(32, 224, sha3(Mask(176, -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 22) + 256)) == 0xd592a1ea00000000000000000000000000000000000000000000000000000000:
        mem[ceil32(arg1.length) + 128] = 'getAmountToGive((address,address'
        mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
        mem[ceil32(arg1.length) + 192] = ',uint256,uint8,bytes32,bytes32,u'
        mem[ceil32(arg1.length) + 224] = 'int256))'
        _10 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256))')
        mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
        _24 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _10) >> 224
        mem[ceil32(arg1.length) + _24 + 160] = arg2
        delegate this.address with:
           funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
             gas gas_remaining wei
            args ',address,uint256,uint256,uint256', mem[ceil32(arg1.length) + 192 len _24]
    else:
        if Mask(32, 224, sha3(Mask(216, -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 27) + 256)) == 0xd592a1ea00000000000000000000000000000000000000000000000000000000:
            mem[ceil32(arg1.length) + 128] = 'staticExchangeChecks((address,ad'
            mem[ceil32(arg1.length) + 160] = 'dress,address,uint256,uint256,ui'
            mem[ceil32(arg1.length) + 192] = 'nt256,uint256,uint8,bytes32,byte'
            mem[ceil32(arg1.length) + 224] = 's32,uint256))'
            _16 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], 'nt256,uint256,uint8,bytes32,byte', 's32,uint256))')
            mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
            _32 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _16) >> 224
            mem[ceil32(arg1.length) + _32 + 160] = arg2
            delegate this.address with:
               funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                 gas gas_remaining wei
                args 'dress,address,uint256,uint256,ui', mem[ceil32(arg1.length) + 192 len _32]
        else:
            if Mask(32, 224, sha3(Mask(240, -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256, 0) >> -(8 * ceil32(arg1.length) + -arg1.length + 30) + 256)) == 0xd592a1ea00000000000000000000000000000000000000000000000000000000:
                mem[ceil32(arg1.length) + 128] = 'performBuyOrder((address,address'
                mem[ceil32(arg1.length) + 160] = ',address,uint256,uint256,uint256'
                mem[ceil32(arg1.length) + 192] = ',uint256,uint8,bytes32,bytes32,u'
                mem[ceil32(arg1.length) + 224] = 'int256),uint256)'
                _22 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], ',uint256,uint8,bytes32,bytes32,u', 'int256),uint256)')
                mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
                _37 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _22) >> 224
                mem[ceil32(arg1.length) + _37 + 160] = arg2
                delegate this.address with:
                   funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                     gas gas_remaining wei
                    args ',address,uint256,uint256,uint256', mem[ceil32(arg1.length) + 192 len _37]
            else:
                mem[ceil32(arg1.length) + 128] = 'performSellOrder(bytes,uint256)'
                if Mask(32, 224, sha3(Mask(248, -(8 * ceil32(arg1.length) + -arg1.length + 31) + 256, 0) << (8 * ceil32(arg1.length) + -arg1.length + 31) - 256)) != 0xd592a1ea00000000000000000000000000000000000000000000000000000000:
                    mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
                    _43 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[ceil32(arg1.length) + 128] = mem[0 len 28], 0
                    mem[ceil32(arg1.length) + _43 + 160] = arg2
                    delegate this.address with:
                       funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                         gas gas_remaining wei
                        args mem[ceil32(arg1.length) + 160 len _43 + 32]
                else:
                    mem[ceil32(arg1.length) + 128] = 'performSellOrder((address,addres'
                    mem[ceil32(arg1.length) + 160] = 's,address,uint256,uint256,uint25'
                    mem[ceil32(arg1.length) + 192] = '6,uint256,uint8,bytes32,bytes32,'
                    mem[ceil32(arg1.length) + 224] = 'uint256),uint256)'
                    _30 = sha3(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32], '6,uint256,uint8,bytes32,bytes32,', 'uint256),uint256)')
                    mem[ceil32(arg1.length) + 128 len calldata.size] = call.data[68 len calldata.size]
                    _48 = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                    mem[ceil32(arg1.length) + 128] = mem[0 len 28], Mask(32, 224, _30) >> 224
                    mem[ceil32(arg1.length) + _48 + 160] = arg2
                    delegate this.address with:
                       funct Mask(8 * -ceil32(arg1.length) + arg1.length + 4, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
                         gas gas_remaining wei
                        args 's,address,uint256,uint256,uint25', mem[ceil32(arg1.length) + 192 len _48]
    require delegate.return_code
    mem[ceil32(arg1.length) + 128] = delegate.return_data[0]
    mem[ceil32(arg1.length) + 160] = delegate.return_data[32]
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length) + 32]
}



}
