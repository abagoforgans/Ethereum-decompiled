contract main {


// =======================  Init code  ======================


array of struct stor3;

function _fallback() payable {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = 2 * stor3.length + 1
        while 2 * stor3.length > idx:
            stor3[idx].field_0 = 0
            stor3[idx].field_256 = 0
            idx = idx + 1
            continue 
    return code.data[133 len 4031]
}



// =====================  Runtime code  =====================


address sub_3751707cAddress;
uint256 stor0;
address stor1;
uint256 stor1;
uint256 name;
array of struct clients;

function name() payable {
    return name
}

function sub_3751707c(?) payable {
    return address(sub_3751707cAddress)
}

function clients(uint256 arg1) payable {
    require arg1 < clients.length
    return clients[arg1].field_0, clients[arg1].field_256
}

function remove() payable {
    if address(sub_3751707cAddress) != msg.sender:
    selfdestruct(address(sub_3751707cAddress))
}

function _fallback() payable {
  stop
}

function sub_1c045ffd(?) payable {
    if arg1 <= 0:
        return 0
    if arg1 >= clients.length:
        return 0
    return clients[arg1].field_256
}

function getAddress(bytes32 arg1) payable {
    call address(stor1).getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function setActive(uint256 arg1, bool arg2) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'admin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if not arg1:
                emit Error(5);
                revert 
            if arg1 >= clients.length:
                emit Error(5);
                revert 
            if clients[arg1].field_256 != arg2:
                clients[arg1].field_256 = arg2 or Mask(248, 8, clients[arg1].field_256)
                emit 0xdec37d75: clients[arg1].field_0, arg2, arg1
}

function setAmbiAddress(address arg1, bytes32 arg2) payable {
    if address(sub_3751707cAddress):
        if arg1 != address(sub_3751707cAddress):
            return 0
    call arg1.getNodeAddress(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args arg2
    require ext_call.success
    if ext_call.return_data[12 len 20] != this.address:
        call arg1.addNode(bytes32 rg1, address rg2) with:
             gas gas_remaining - 25050 wei
            args arg2, this.address
        require ext_call.success
        if not ext_call.return_data[0]:
            return 0
    name = arg2
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function withdraw(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'refunder', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if not arg1:
                emit Error(1);
                revert 
            if not arg2:
                emit Error(1);
                revert 
            if arg2 >= clients.length:
                emit Error(1);
                revert 
            if arg3 > eth.balance(this.address):
                emit Error(11);
                revert 
            require arg2 < clients.length
            if arg3 > clients[arg2].field_0:
                emit 0x41fac0a4: arg2
                revert 
            call arg1 with:
               value arg3 wei
                 gas 0 wei
            clients[arg2].field_0 -= arg3
            emit 0xf06fb9a1: arg3, arg4, arg2
}

function sub_3a3cd6f4(?) payable {
    if address(sub_3751707cAddress):
        call address(stor1).hasRelation(bytes32 rg1, bytes32 rg2, address rg3) with:
             gas gas_remaining - 25050 wei
            args name, 'admin', msg.sender
        require ext_call.success
        if ext_call.return_data[0]:
            if arg1 >= clients.length:
                emit Error(3);
                revert 
            if arg1:
                require arg1 < clients.length
                clients[arg1].field_0 += arg2
                emit 0xd9cabe38: arg2, arg1
            else:
                if not arg3:
                    emit Error(4);
                    revert 
                if arg1:
                    require arg1 < clients.length
                    clients[arg1].field_0 += arg2
                    emit 0xd9cabe38: arg2, arg1
                else:
                    clients.length++
                    if not clients.length <= clients.length + 1:
                        idx = 2 * clients.length + 1
                        while 2 * clients.length > idx:
                            clients[idx].field_0 = 0
                            clients[idx].field_256 = 0
                            idx = idx + 1
                            continue 
                    require clients.length < clients.length
                    clients[clients.length].field_0 = arg2
                    clients[clients.length].field_256 = 1
                    emit 0xdec37d75: clients.length, 1, arg3
                    emit 0xd9cabe38: arg2, clients.length
}



}
