contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
address stor2;
uint256 stor2;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    address(stor2) = 0
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    return code.data[123 len 3558]
}



// =====================  Runtime code  =====================


uint256 n_domains;
uint256 root_domain;
address stor2;
mapping of struct domain;

function root_domain() payable {
    return root_domain
}

function getDomain(uint256 arg1) payable {
    return domain[arg1].field_0, 
           domain[arg1].field_256,
           domain[arg1].field_512,
           domain[arg1].field_768,
           domain[arg1].field_1024,
           domain[arg1].field_1280
}

function n_domains() payable {
    return n_domains
}

function getId(uint256 arg1, uint256 arg2) payable {
    return domain[arg1][6][arg2].field_0, domain[arg1][6][arg2].field_256, domain[arg1][6][arg2].field_512
}

function _fallback() payable {
  stop
}

function changeId(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require arg1
    require arg2
    if domain[arg1].field_0 == msg.sender:
        if not domain[arg1][6][arg2].field_0:
            if arg3:
                domain[arg1][6][arg2].field_0 = arg3
                domain[arg1][6][arg2].field_256 = domain[arg1].field_1280
                if domain[arg1].field_1280:
                    domain[arg1][6][domain[arg1].field_1280].field_512 = arg2
                domain[arg1].field_1280 = arg2
                emit DomainChanged(arg1, arg2, msg.sender);
        else:
            if arg3:
                domain[arg1][6][arg2].field_0 = arg3
            else:
                if not domain[arg1][6][arg2].field_512:
                    domain[arg1].field_1280 = domain[arg1][6][arg2].field_256
                else:
                    domain[arg1][6][domain[arg1][6][arg2].field_512].field_256 = domain[arg1][6][arg2].field_256
                if domain[arg1][6][arg2].field_256:
                    domain[arg1][6][domain[arg1][6][arg2].field_256].field_512 = domain[arg1][6][arg2].field_512
                domain[arg1][6][arg2].field_512 = 0
                domain[arg1][6][arg2].field_256 = 0
                domain[arg1][6][arg2].field_0 = 0
            emit DomainChanged(arg1, arg2, msg.sender);
    if msg.value <= 0:
    call msg.sender with:
       value msg.value wei
         gas 0 wei
    require ext_call.success
}

function changeDomain(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    if arg2 <= 2 * 10^6:
        if arg1:
            if domain[arg1].field_0:
                if domain[arg1].field_0 == msg.sender:
                    domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                    domain[arg1].field_512 = arg3
                    domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                    domain[arg1].field_256 = block.number + arg2
                    emit DomainChanged(arg1, 0, msg.sender);
                    if msg.value <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                    if ext_call.success:
                else:
                    if block.number > domain[arg1].field_256:
                        domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                        domain[arg1].field_512 = arg3
                        domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                        domain[arg1].field_256 = block.number + arg2
                        emit DomainChanged(arg1, 0, msg.sender);
                        if msg.value <= 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                        if ext_call.success:
                    else:
                        if not domain[arg1].field_768:
                            if domain[arg1].field_512 <= 0:
                                if msg.value <= 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                                if ext_call.success:
                            else:
                                if msg.value < domain[arg1].field_512:
                                    if msg.value <= 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                    if ext_call.success:
                                else:
                                    call domain[arg1].field_0 with:
                                       value domain[arg1].field_512 wei
                                         gas 0 wei
                                    if ext_call.success:
                                        domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                                        domain[arg1].field_512 = arg3
                                        domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                                        domain[arg1].field_256 = block.number + arg2
                                        emit DomainChanged(arg1, 0, msg.sender);
                                        if msg.value <= domain[arg1].field_512:
                                        call msg.sender with:
                                           value msg.value - domain[arg1].field_512 wei
                                             gas 0 wei
                                        if ext_call.success:
                        else:
                            if domain[arg1].field_768 != msg.sender:
                                if msg.value <= 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                                if ext_call.success:
                            else:
                                if msg.value < domain[arg1].field_512:
                                    if msg.value <= 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                    if ext_call.success:
                                else:
                                    if domain[arg1].field_512 <= 0:
                                        domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                                        domain[arg1].field_512 = arg3
                                        domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                                        domain[arg1].field_256 = block.number + arg2
                                        emit DomainChanged(arg1, 0, msg.sender);
                                        if msg.value <= 0:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                        if ext_call.success:
                                    else:
                                        call domain[arg1].field_0 with:
                                           value domain[arg1].field_512 wei
                                             gas 0 wei
                                        if ext_call.success:
                                            domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                                            domain[arg1].field_512 = arg3
                                            domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                                            domain[arg1].field_256 = block.number + arg2
                                            emit DomainChanged(arg1, 0, msg.sender);
                                            if msg.value <= domain[arg1].field_512:
                                            call msg.sender with:
                                               value msg.value - domain[arg1].field_512 wei
                                                 gas 0 wei
                                            if ext_call.success:
            else:
                domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                domain[arg1].field_512 = arg3
                domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                domain[arg1].field_256 = block.number + arg2
                domain[arg1].field_1024 = root_domain
                root_domain = arg1
                if msg.sender == stor2:
                    if n_domains < 32301:
                        if arg4:
                            domain[arg1].field_0 = arg4 or Mask(96, 160, domain[arg1].field_0)
                            domain[arg1].field_768 = 0
                n_domains++
                emit DomainChanged(arg1, 0, msg.sender);
                if msg.value <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                if ext_call.success:
    else:
        if arg1:
            if domain[arg1].field_0:
                if domain[arg1].field_0 == msg.sender:
                    domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                    domain[arg1].field_512 = arg3
                    domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                    domain[arg1].field_256 = block.number + 2 * 10^6
                    emit DomainChanged(arg1, 0, msg.sender);
                    if msg.value <= 0:
                    call msg.sender with:
                       value msg.value wei
                         gas 0 wei
                    if ext_call.success:
                else:
                    if block.number > domain[arg1].field_256:
                        domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                        domain[arg1].field_512 = arg3
                        domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                        domain[arg1].field_256 = block.number + 2 * 10^6
                        emit DomainChanged(arg1, 0, msg.sender);
                        if msg.value <= 0:
                        call msg.sender with:
                           value msg.value wei
                             gas 0 wei
                        if ext_call.success:
                    else:
                        if not domain[arg1].field_768:
                            if domain[arg1].field_512 <= 0:
                                if msg.value <= 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                                if ext_call.success:
                            else:
                                if msg.value < domain[arg1].field_512:
                                    if msg.value <= 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                    if ext_call.success:
                                else:
                                    call domain[arg1].field_0 with:
                                       value domain[arg1].field_512 wei
                                         gas 0 wei
                                    if ext_call.success:
                                        domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                                        domain[arg1].field_512 = arg3
                                        domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                                        domain[arg1].field_256 = block.number + 2 * 10^6
                                        emit DomainChanged(arg1, 0, msg.sender);
                                        if msg.value <= domain[arg1].field_512:
                                        call msg.sender with:
                                           value msg.value - domain[arg1].field_512 wei
                                             gas 0 wei
                                        if ext_call.success:
                        else:
                            if domain[arg1].field_768 != msg.sender:
                                if msg.value <= 0:
                                call msg.sender with:
                                   value msg.value wei
                                     gas 0 wei
                                if ext_call.success:
                            else:
                                if msg.value < domain[arg1].field_512:
                                    if msg.value <= 0:
                                    call msg.sender with:
                                       value msg.value wei
                                         gas 0 wei
                                    if ext_call.success:
                                else:
                                    if domain[arg1].field_512 <= 0:
                                        domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                                        domain[arg1].field_512 = arg3
                                        domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                                        domain[arg1].field_256 = block.number + 2 * 10^6
                                        emit DomainChanged(arg1, 0, msg.sender);
                                        if msg.value <= 0:
                                        call msg.sender with:
                                           value msg.value wei
                                             gas 0 wei
                                        if ext_call.success:
                                    else:
                                        call domain[arg1].field_0 with:
                                           value domain[arg1].field_512 wei
                                             gas 0 wei
                                        if ext_call.success:
                                            domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                                            domain[arg1].field_512 = arg3
                                            domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                                            domain[arg1].field_256 = block.number + 2 * 10^6
                                            emit DomainChanged(arg1, 0, msg.sender);
                                            if msg.value <= domain[arg1].field_512:
                                            call msg.sender with:
                                               value msg.value - domain[arg1].field_512 wei
                                                 gas 0 wei
                                            if ext_call.success:
            else:
                domain[arg1].field_0 = msg.sender or Mask(96, 160, domain[arg1].field_0)
                domain[arg1].field_512 = arg3
                domain[arg1].field_768 = arg4 or Mask(96, 160, domain[arg1].field_768)
                domain[arg1].field_256 = block.number + 2 * 10^6
                domain[arg1].field_1024 = root_domain
                root_domain = arg1
                if msg.sender == stor2:
                    if n_domains < 32301:
                        if arg4:
                            domain[arg1].field_0 = arg4 or Mask(96, 160, domain[arg1].field_0)
                            domain[arg1].field_768 = 0
                n_domains++
                emit DomainChanged(arg1, 0, msg.sender);
                if msg.value <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 0 wei
                if ext_call.success:
    revert 
}



}
