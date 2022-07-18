contract main {




// =====================  Runtime code  =====================


mapping of struct sub_3eea79d1;

function sub_3eea79d1(?) payable {
    require calldata.size - 4 >= 32
    return sub_3eea79d1[address(arg1)].field_0, sub_3eea79d1[address(arg1)].field_256
}

function sub_a795f9e2(?) payable {
    require calldata.size - 4 >= 32
    return sub_3eea79d1[arg1].field_0, sub_3eea79d1[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_55fbde82(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer)
    require not sub_3eea79d1[address(signer)].field_256
    sub_3eea79d1[address(signer)].field_0 = arg1
    sub_3eea79d1[address(signer)].field_256 = block.timestamp
    emit 0x1248deae: address(signer)
    return 1
}



}
