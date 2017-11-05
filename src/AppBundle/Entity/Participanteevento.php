<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Participanteevento
 *
 * @ORM\Table(name="participanteevento")
 * @ORM\Entity
 */
class Participanteevento
{
    /**
     * @var integer
     *
     * @ORM\Column(name="idevento", type="integer", nullable=true)
     */
    private $idevento;

    /**
     * @var integer
     *
     * @ORM\Column(name="idpersona", type="integer", nullable=true)
     */
    private $idpersona;

    /**
     * @var integer
     *
     * @ORM\Column(name="estado", type="integer", nullable=true)
     */
    private $estado;

    /**
     * @var integer
     *
     * @ORM\Column(name="estadoparticipante", type="integer", nullable=true)
     */
    private $estadoparticipante;

    /**
     * @var integer
     *
     * @ORM\Column(name="idparticipanteevento", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $idparticipanteevento;


}

