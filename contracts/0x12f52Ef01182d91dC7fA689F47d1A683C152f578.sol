contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 2973]




// =====================  Runtime code  =====================


array of uint256 stor2;
mapping of uint256 stor99;

function sub_88fd6510(?) payable {
    return stor[arg1 + 1][address(arg2)][address(arg3)]
}

function sub_d1717fd4(?) payable {
    return stor[arg1][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_43505a75(?) payable {
    stor2[arg1] = arg2
    stor[arg1][address(msg.sender)] = arg2
}

function sub_5bada338(?) payable {
    stor[arg1 + 1][address(msg.sender)][address(arg2)] = arg3
    emit Approval(arg3, msg.sender, arg2);
    return 1
}

function sub_2d0277b9(?) payable {
    require ext_code.size(0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64)
    delegate 0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args stor[arg1][address(msg.sender)], arg3
    require delegate.return_code
    stor[arg1][address(msg.sender)] = delegate.return_data[0]
    require ext_code.size(0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64)
    delegate 0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64.0x66098d4f with:
         gas gas_remaining - 50 wei
        args stor[arg1][address(arg2)], arg3
    require delegate.return_code
    stor[arg1][address(arg2)] = delegate.return_data[0]
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function sub_45008797(?) payable {
    require ext_code.size(0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64)
    delegate 0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64.0x66098d4f with:
         gas gas_remaining - 50 wei
        args stor[arg1][address(arg3)], arg4
    require delegate.return_code
    stor[arg1][address(arg3)] = delegate.return_data[0]
    require ext_code.size(0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64)
    delegate 0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args stor[arg1][address(arg2)], arg4
    require delegate.return_code
    stor[arg1][address(arg2)] = delegate.return_data[0]
    require ext_code.size(0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64)
    delegate 0x4bfe6ed3ceaf5f7383ed36ea26345c037eb5ad64.0xf4f3bdc1 with:
         gas gas_remaining - 50 wei
        args stor[arg1 + 1][address(arg2)][address(msg.sender)], arg4
    require delegate.return_code
    stor[arg1 + 1][address(arg2)][address(msg.sender)] = delegate.return_data[0]
    emit Transfer(arg4, arg2, arg3);
    return 1
}



}
