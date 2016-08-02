get-azurermsubscription
Select-AzureRmSubscription -SubscriptionId 796b222b-b926-4bd5-a6c6-b7f6041433d7
$RG = Get-AzureRMResourceGroup -name "CitrixCloud"
$VMs = Get-AzureRmVM -ResourceGroupName $RG.ResourceGroupName
                                  foreach($VM in $VMs)
                                  {
                                      $VMDetail = Get-AzureRmVM -ResourceGroupName $RG.ResourceGroupName -Name $VM.Name -Status
                                      foreach ($VMStatus in $VMDetail.Statuses)
                                      { 
                                          if($VMStatus.Code.CompareTo("PowerState/deallocated") -eq 0)
                                          {
                                              $VMStatusDetail = $VMStatus.DisplayStatus
                                              
                                          }
                                      }
                                      start-azurermvm -name $vm.Name -ResourceGroupName $rg.ResourceGroupName
                                      write-output $VM.Name " started"
                                  }