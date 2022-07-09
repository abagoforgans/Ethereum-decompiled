contract main {




// =====================  Runtime code  =====================


#
#  - sub_4fe6365e(?)
#
array of struct model;
array of struct objective;
array of uint256 result;
address tokenAddress;
uint256 cost;
uint256 lighthouseFee;
uint256 validatorFee;
uint256 sub_f0476bc5;
uint256 sub_699373ca;
address promisorAddress;
address promiseeAddress;
address sub_6301fd63Address;
uint8 stor12; offset 160
uint8 stor12; offset 168
address validatorAddress;
address factoryAddress;
uint256 stor13;
address xrtAddress;

function lighthouseFee() payable {
    return lighthouseFee
}

function model() payable {
    return model[0 len model.length].field_0
}

function isSuccess() payable {
    return bool(uint8(stor12.field_160))
}

function cost() payable {
    return cost
}

function objective() payable {
    return objective[0 len objective.length].field_0
}

function xrt() payable {
    return xrtAddress
}

function validator() payable {
    return validatorAddress
}

function validatorFee() payable {
    return validatorFee
}

function promisee() payable {
    return promiseeAddress
}

function sub_6301fd63(?) payable {
    return sub_6301fd63Address
}

function result() payable {
    return result[0 len result.length]
}

function sub_699373ca(?) payable {
    return sub_699373ca
}

function isFinalized() payable {
    return bool(uint8(stor12.field_168))
}

function promisor() payable {
    return promisorAddress
}

function factory() payable {
    return address(factoryAddress)
}

function sub_f0476bc5(?) payable {
    return sub_f0476bc5
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setup(address arg1) payable {
    require calldata.size - 4 >= 32
    require not address(factoryAddress)
    uint256(stor13) = msg.sender or Mask(96, 160, uint256(stor13))
    xrtAddress = arg1
    return 1
}

function sub_413781d2(?) payable {
    require calldata.size - 4 >= 320
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require arg10 <= 4294967296
    require arg10 + 36 <= calldata.size
    require arg10.length <= 4294967296 and arg10 + arg10.length + 36 <= calldata.size
    require msg.sender == address(factoryAddress)
    require block.number < arg8
    mem[96 len arg1.length] = arg1[all]
    mem[96] = uint256(model.field_0)
    idx = 96
    s = 0
    while model.length + 96 > idx + 32:
        mem[idx + 32] = model[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[96 len model.length]) == sha3(arg1[all])
    mem[96 len arg2.length] = arg2[all]
    mem[96] = uint256(objective.field_0)
    idx = 96
    s = 0
    while objective.length + 96 > idx + 32:
        mem[idx + 32] = objective[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[96 len objective.length]) == sha3(arg2[all])
    require tokenAddress == arg3
    require arg4 == cost
    require sub_6301fd63Address == arg6
    require validatorAddress == arg5
    lighthouseFee = arg7
    require ext_code.size(address(factoryAddress))
    staticcall address(factoryAddress).nonceOf(address arg1) with:
            gas gas_remaining wei
           args address(arg9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_699373ca = sha3(arg1[all], arg2[all], arg3, arg4, arg5, arg6, arg7, arg8, ext_call.return_data[0], arg9)
    mem[arg2.length + arg1.length + 368 len arg10.length] = arg10[all]
    mem[arg2.length + arg1.length + arg10.length + 368] = 0
    mem[arg2.length + arg1.length + ceil32(arg10.length) + 400] = '\x19Ethereum Signed Message:\n32'
    mem[arg2.length + arg1.length + ceil32(arg10.length) + 428] = sub_699373ca
    mem[arg2.length + arg1.length + ceil32(arg10.length) + 368] = 60
    if arg10.length != 65:
        promisorAddress = 0
        require 0 == arg9
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) - 256 >= 27:
            promisorAddress = 0
            require 0 == arg9
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) - 256) + 27):
                signer = erecover(sha3(mem[arg2.length + arg1.length + ceil32(arg10.length) + 400 len Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), mem[arg2.length + arg1.length + arg10.length + 400 len -arg10.length + ceil32(arg10.length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) - 256) + 27 << 248, mem[arg2.length + arg1.length + 368], mem[arg2.length + arg1.length + 400]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                promisorAddress = address(signer)
                require address(signer) == arg9
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) - 256) + 27) != 28:
                    promisorAddress = 0
                    require 0 == arg9
                else:
                    signer = erecover(sha3(mem[arg2.length + arg1.length + ceil32(arg10.length) + 400 len Mask(8 * -ceil32(arg10.length) + arg10.length + 32, 0, 0), mem[arg2.length + arg1.length + arg10.length + 400 len -arg10.length + ceil32(arg10.length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('param', 'arg2'))), ('cd', ('add', 4, ('param', 'arg1')))), 32))), 0) - 256) + 27 << 248, mem[arg2.length + arg1.length + 368], mem[arg2.length + arg1.length + 400]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    promisorAddress = address(signer)
                    require address(signer) == arg9
    return 1
}

function sub_48a984e4(?) payable {
    require calldata.size - 4 >= 320
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + ('cd', 4).length + 36 <= calldata.size
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    require cd[292] <= 4294967296
    require cd[292] + 36 <= calldata.size
    require ('cd', 292).length <= 4294967296 and cd[292] + ('cd', 292).length + 36 <= calldata.size
    require msg.sender == address(factoryAddress)
    require block.number < cd[228]
    model.length = (2 * ('cd', 4).length) + 1
    s = 0
    idx = cd[4] + 36
    while cd[4] + ('cd', 4).length + 36 > idx:
        model[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 4).length + 31) >> 5
    while model.length + 31 / 32 > idx:
        model[idx].field_0 = 0
        idx = idx + 1
        continue 
    objective.length = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        objective[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while objective.length + 31 / 32 > idx:
        objective[idx].field_0 = 0
        idx = idx + 1
        continue 
    tokenAddress = address(cd[68])
    cost = cd[100]
    sub_6301fd63Address = address(cd[132])
    validatorAddress = address(cd[164])
    validatorFee = cd[196]
    require ext_code.size(address(factoryAddress))
    staticcall address(factoryAddress).nonceOf(address arg1) with:
            gas gas_remaining wei
           args address(cd[260])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_f0476bc5 = sha3(call.data[cd[4] + 36 len ('cd', 4).length], call.data[cd[36] + 36 len ('cd', 36).length], address(cd[68]), cd[100], address(cd[132]), address(cd[164]), cd[196], cd[228], ext_call.return_data[0], address(cd[260]))
    mem[('cd', 36).length + ('cd', 4).length + 368 len ('cd', 292).length] = call.data[cd[292] + 36 len ('cd', 292).length]
    mem[('cd', 36).length + ('cd', 4).length + ('cd', 292).length + 368] = 0
    mem[('cd', 36).length + ('cd', 4).length + ceil32(('cd', 292).length) + 400] = '\x19Ethereum Signed Message:\n32'
    mem[('cd', 36).length + ('cd', 4).length + ceil32(('cd', 292).length) + 428] = sub_f0476bc5
    mem[('cd', 36).length + ('cd', 4).length + ceil32(('cd', 292).length) + 368] = 60
    if ('cd', 292).length != 65:
        promiseeAddress = 0
        require 0 == address(cd[260])
    else:
        if Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) - 256 >= 27:
            promiseeAddress = 0
            require 0 == address(cd[260])
        else:
            if 27 == uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) - 256) + 27):
                signer = erecover(sha3(mem[('cd', 36).length + ('cd', 4).length + ceil32(('cd', 292).length) + 400 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[('cd', 36).length + ('cd', 4).length + ('cd', 292).length + 400 len -('cd', 292).length + ceil32(('cd', 292).length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) - 256) + 27 << 248, mem[('cd', 36).length + ('cd', 4).length + 368], mem[('cd', 36).length + ('cd', 4).length + 400]) 
                if not erecover.result:
                    revert with ext_call.return_data[0 len return_data.size]
                promiseeAddress = address(signer)
                require address(signer) == address(cd[260])
            else:
                if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) - 256) + 27) != 28:
                    promiseeAddress = 0
                    require 0 == address(cd[260])
                else:
                    signer = erecover(sha3(mem[('cd', 36).length + ('cd', 4).length + ceil32(('cd', 292).length) + 400 len Mask(8 * -ceil32(('cd', 292).length) + ('cd', 292).length + 32, 0, 0), mem[('cd', 36).length + ('cd', 4).length + ('cd', 292).length + 400 len -('cd', 292).length + ceil32(('cd', 292).length)]]), (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', ('add', 432, ('cd', ('add', 4, ('cd', 36))), ('cd', ('add', 4, ('cd', 4)))), 32))), 0) - 256) + 27 << 248, mem[('cd', 36).length + ('cd', 4).length + 368], mem[('cd', 36).length + ('cd', 4).length + 400]) 
                    if not erecover.result:
                        revert with ext_call.return_data[0 len return_data.size]
                    promiseeAddress = address(signer)
                    require address(signer) == address(cd[260])
    return 1
}



}
