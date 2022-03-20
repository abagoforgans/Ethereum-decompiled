contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[63 len 11392]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address stor1;
uint256 stor1;
address stor2;
uint256 stor2;
array of address sub_be32bb4a;
mapping of uint8 isRegistered;

function count() payable {
    return sub_be32bb4a.length
}

function owner() payable {
    return address(owner)
}

function sub_be32bb4a(?) payable {
    require arg1 < sub_be32bb4a.length
    return address(sub_be32bb4a[arg1])
}

function isRegistered(address arg1) payable {
    return isRegistered[address(arg1)]
}

function _fallback() payable {
  stop
}

function sub_5608c7b2(?) payable {
    if msg.sender == address(owner):
    require tx.origin == address(owner)
}

function sub_244d12ed(?) payable {
    if address(owner) != msg.sender:
        require tx.origin == address(owner)
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
}

function sub_7c1768ae(?) payable {
    if address(owner) != msg.sender:
        require tx.origin == address(owner)
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
}

function setOwner(address arg1) payable {
    if address(owner) != msg.sender:
        require tx.origin == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function sub_be2086cb(?) payable {
    call address(stor1).0xc3c5a547 with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    require ext_call.return_data[0]
    if not arg3:
        mem[ceil32(arg7.length) + 9591 len arg7.length] = arg7[all]
        if not arg7.length % 32:
            create contract with 0 wei
                            code: code.data[2185 len 9207], address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, 224, arg7.length, arg7[all]
        else:
            mem[floor32(arg7.length) + ceil32(arg7.length) + 9591] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 9623 len arg7.length % 32]
            create contract with 0 wei
                            code: code.data[2185 len 9207], address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, 224, arg7.length, arg7[all], mem[ceil32(arg7.length) + arg7.length + 9591 len -(arg7.length % 32) + 32]
        sub_be32bb4a.length++
        if not sub_be32bb4a.length <= sub_be32bb4a.length + 1:
            idx = sub_be32bb4a.length + 1
            while sub_be32bb4a.length > idx:
                uint256(sub_be32bb4a[idx]) = 0
                idx = idx + 1
                continue 
        uint256(sub_be32bb4a[sub_be32bb4a.length]) = create.new_address or Mask(96, 160, uint256(sub_be32bb4a[sub_be32bb4a.length]))
        isRegistered[address(create.new_address)] = 1
        emit Registration(address(create.new_address));
        call address(create.new_address) with:
           value msg.value wei
             gas 0 wei
        if ext_call.success:
    else:
        call address(stor2).0xc3c5a547 with:
             gas gas_remaining - 25050 wei
            args arg3
        if ext_call.success:
            if ext_call.return_data[0]:
                mem[ceil32(arg7.length) + 9591 len arg7.length] = arg7[all]
                if not arg7.length % 32:
                    create contract with 0 wei
                                    code: code.data[2185 len 9207], address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, 224, arg7.length, arg7[all]
                else:
                    mem[floor32(arg7.length) + ceil32(arg7.length) + 9591] = mem[floor32(arg7.length) + ceil32(arg7.length) + -(arg7.length % 32) + 9623 len arg7.length % 32]
                    create contract with 0 wei
                                    code: code.data[2185 len 9207], address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, 224, arg7.length, arg7[all], mem[ceil32(arg7.length) + arg7.length + 9591 len -(arg7.length % 32) + 32]
                sub_be32bb4a.length++
                if not sub_be32bb4a.length <= sub_be32bb4a.length + 1:
                    idx = sub_be32bb4a.length + 1
                    while sub_be32bb4a.length > idx:
                        uint256(sub_be32bb4a[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(sub_be32bb4a[sub_be32bb4a.length]) = create.new_address or Mask(96, 160, uint256(sub_be32bb4a[sub_be32bb4a.length]))
                isRegistered[address(create.new_address)] = 1
                emit Registration(address(create.new_address));
                call address(create.new_address) with:
                   value msg.value wei
                     gas 0 wei
                if ext_call.success:
    revert 
}



}
