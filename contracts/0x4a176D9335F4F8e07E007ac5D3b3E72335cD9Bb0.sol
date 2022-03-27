contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 6037]




// =====================  Runtime code  =====================


array of address services;
mapping of uint256 ids;

function ids(address arg1) {
    return ids[arg1]
}

function services(uint256 arg1) {
    require arg1 < services.length
    return address(services[arg1])
}

function _fallback() payable {
    revert 
}

function isService(address arg1) {
    if services.length <= 0:
        return 0
    require ids[address(arg1)] < services.length
    if address(services[stor1[address(arg1)]]) != arg1:
        return 0
    if not arg1:
        return 0
    return 1
}

function sub_989c59c8(?) {
    create contract with 0 wei
                    code: code.data[779 len 5258], Array(len=arg2, data=arg1.length, call.data[arg1 + 36 len 32 * arg1.length])
    require create.new_address
    if services.length <= 0:
        services.length++
        if not services.length <= services.length + 1:
            idx = services.length + 1
            while services.length > idx:
                uint256(services[idx]) = 0
                idx = idx + 1
                continue 
        require services.length < services.length
        address(services[services.length]) = address(create.new_address)
        ids[address(create.new_address)] = services.length
        emit ServiceRegistered(msg.sender, address(create.new_address));
    else:
        require ids[address(create.new_address)] < services.length
        if address(services[stor1[address(create.new_address)]]) != address(create.new_address):
            services.length++
            if not services.length <= services.length + 1:
                idx = services.length + 1
                while services.length > idx:
                    uint256(services[idx]) = 0
                    idx = idx + 1
                    continue 
            require services.length < services.length
            address(services[services.length]) = address(create.new_address)
            ids[address(create.new_address)] = services.length
            emit ServiceRegistered(msg.sender, address(create.new_address));
        else:
            if not address(create.new_address):
                services.length++
                if not services.length <= services.length + 1:
                    idx = services.length + 1
                    while services.length > idx:
                        uint256(services[idx]) = 0
                        idx = idx + 1
                        continue 
                require services.length < services.length
                address(services[services.length]) = address(create.new_address)
                ids[address(create.new_address)] = services.length
                emit ServiceRegistered(msg.sender, address(create.new_address));
    return address(create.new_address)
}



}
