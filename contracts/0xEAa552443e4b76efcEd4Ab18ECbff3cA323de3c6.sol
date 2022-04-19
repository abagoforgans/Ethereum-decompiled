contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 4040]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
mapping of uint256 stor4;

function setControllerAddress(address arg1) {
    require msg.sender == stor0
    stor1 = arg1
}

function drain() {
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    emit 0x382c6ddd: msg.sender, msg.value
    stor2[address(msg.sender)] = 1
    stor3[address(msg.sender)] = msg.value
    stor4[address(msg.sender)] = block.timestamp
}

function sub_673efd49(?) payable {
    require msg.sender == stor1
    if bool(stor2[address(arg1)]) != 1:
        require bool(stor2[address(arg1)]) == 1
        require arg4 == 2
        if arg2 > arg3:
            call arg1 with:
               value 175 * stor3[address(arg1)] / 100 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x22482138: address(arg1), arg2, arg3, Array(len=3, data='win'), stor4[address(arg1)]
            stor2[address(arg1)] = 0
        else:
            if arg2 < arg3:
                call arg1 with:
                   value 1 wei
                     gas 0 wei
                require ext_call.success
                emit 0x22482138: address(arg1), arg2, arg3, Array(len=4, data='lost'), stor4[address(arg1)]
                stor2[address(arg1)] = 0
            else:
                if arg2 == arg3:
                    call arg1 with:
                       value stor3[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    emit 0x22482138: address(arg1), arg2, arg3, Array(len=4, data='draw'), stor4[address(arg1)]
                    stor2[address(arg1)] = 0
    else:
        if arg4 == 1:
            if arg2 < arg3:
                call arg1 with:
                   value 175 * stor3[address(arg1)] / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x22482138: address(arg1), arg2, arg3, Array(len=3, data='win'), stor4[address(arg1)]
                stor2[address(arg1)] = 0
            else:
                if arg2 > arg3:
                    call arg1 with:
                       value 1 wei
                         gas 0 wei
                    require ext_call.success
                    emit 0x22482138: address(arg1), arg2, arg3, Array(len=4, data='lost'), stor4[address(arg1)]
                    stor2[address(arg1)] = 0
                else:
                    if arg2 == arg3:
                        call arg1 with:
                           value stor3[address(arg1)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x22482138: address(arg1), arg2, arg3, Array(len=4, data='draw'), stor4[address(arg1)]
                        stor2[address(arg1)] = 0
        else:
            require bool(stor2[address(arg1)]) == 1
            require arg4 == 2
            if arg2 > arg3:
                call arg1 with:
                   value 175 * stor3[address(arg1)] / 100 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit 0x22482138: address(arg1), arg2, arg3, Array(len=3, data='win'), stor4[address(arg1)]
                stor2[address(arg1)] = 0
            else:
                if arg2 < arg3:
                    call arg1 with:
                       value 1 wei
                         gas 0 wei
                    require ext_call.success
                    emit 0x22482138: address(arg1), arg2, arg3, Array(len=4, data='lost'), stor4[address(arg1)]
                    stor2[address(arg1)] = 0
                else:
                    if arg2 == arg3:
                        call arg1 with:
                           value stor3[address(arg1)] wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        emit 0x22482138: address(arg1), arg2, arg3, Array(len=4, data='draw'), stor4[address(arg1)]
                        stor2[address(arg1)] = 0
}



}
