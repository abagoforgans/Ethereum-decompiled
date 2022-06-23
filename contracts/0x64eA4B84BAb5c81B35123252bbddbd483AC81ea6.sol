contract main {




// =====================  Runtime code  =====================


function _fallback() {
    revert
}

function sub_6559e1f8(?) {
    emit 0x87e4662a: msg.sender
}

function sub_90711c6c(?) {
    emit 0xc56eb701: msg.sender
}

function sub_5834691d(?) payable {
    require calldata.size - 4 >= 64
    require arg2
    require msg.value / arg2 >= 5000
    create contract with callvalue wei
                    code: code.data[1155 len 3044], arg2, msg.sender, this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x62c67669: address(create.new_address), Mask(24, 232, arg1)
}

function sub_98c4a0f0(?) payable {
    require calldata.size - 4 >= 64
    require arg2
    require msg.value / arg2 >= 10000
    create contract with callvalue wei
                    code: code.data[4199 len 3047], arg2, msg.sender, this.address
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xda78f1ed: address(create.new_address), Mask(24, 232, arg1)
}



}
