contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor6;

function _fallback() payable {
    stor3 = 2 * 10^10
    stor6 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[68 len 1812]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint8 stor1;
uint256 fee;
uint256 gasPrice;
uint256 stor4;
mapping of uint8 stor5;
uint256 stor6;

function getGasPrice() {
    return gasPrice
}

function getFee() {
    return fee
}

function _fallback() payable {
    revert 
}

function getPrice(uint256 arg1) {
    return ((arg1 * gasPrice) + fee)
}

function sub_fc903d1c(?) {
    require stor0 == msg.sender
    stor4 = arg1
}

function setFee(uint256 arg1) {
    require stor0 == msg.sender
    fee = arg1
}

function updateOwner(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function setGasPrice(uint256 arg1) {
    require stor0 == msg.sender
    gasPrice = arg1
}

function sub_618bb079(?) {
    require stor0 == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}

function sub_19b108c0(?) {
    if not arg3:
        return arg1
    require arg3 + -arg2 + 1
    return ((arg1 % arg3 + -arg2 + 1) + arg2)
}

function withdraw(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
}

function sub_df5c1571(?) payable {
    require msg.value >= fee
    require arg1 < arg2
    require gasPrice
    stor6++
    stor5[address(msg.sender)][address(arg1)][arg2][stor6][arg3][arg4][stor6][msg.value - stor2 / stor3][stor4][block.number][block.timestamp] = 1
    emit 0x8d8f4fad: arg3, arg4, arg1, arg2, stor6, msg.value - fee / gasPrice, stor4, sha3(address(msg.sender), address(arg1), arg2, stor6, arg3, arg4, stor6, msg.value - fee / gasPrice, stor4, block.number, block.timestamp), msg.sender
    return sha3(address(msg.sender), address(arg1), arg2, stor6, arg3, arg4, stor6, msg.value - fee / gasPrice, stor4, block.number, block.timestamp)
}

function sub_50529b0c(?) {
    require stor1[address(msg.sender)]
    if not stor5[arg2]:
        emit 0x491cbf68: arg8, arg2, arg1, arg6 + 1
    else:
        if arg6:
            call arg1 with:
               funct Mask(32, 224, sha3('__rndd_callback(bytes32,uint256,', 'uint256)')) >> 224
                 gas arg7 wei
                args arg2, 0, arg6
        else:
            if not arg4:
                call arg1 with:
                   funct Mask(32, 224, sha3('__rndd_callback(bytes32,uint256,', 'uint256)')) >> 224
                     gas arg7 wei
                    args arg2, arg5, arg6
            else:
                require arg4 + -arg3 + 1
                call arg1 with:
                   funct Mask(32, 224, sha3('__rndd_callback(bytes32,uint256,', 'uint256)')) >> 224
                     gas arg7 wei
                    args arg2, (arg5 % arg4 + -arg3 + 1) + arg3, arg6
        if ext_call.success:
            emit 0x491cbf68: arg8, arg2, arg1, arg6
        else:
            emit 0x491cbf68: arg8, arg2, arg1, arg6 + 2
}



}
